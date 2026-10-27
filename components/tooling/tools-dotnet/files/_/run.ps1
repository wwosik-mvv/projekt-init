#!/usr/bin/env pwsh
# Human-facing launcher. A reserved verb runs a built-in action; anything else is treated as
# the name of a tool under ./tools. Run with no arguments to list both.

[CmdletBinding()]
param(
    [Parameter(Position = 0)]
    [string]$Command,

    [Parameter(Position = 1, ValueFromRemainingArguments = $true)]
    [string[]]$Rest
)

$ErrorActionPreference = 'Stop'
$repoRoot = $PSScriptRoot
$toolsDir = Join-Path $repoRoot 'tools'
$verbs = @(
    # slot: run-verbs-list
)

function Get-Tools {
    if (-not (Test-Path $toolsDir)) { return @() }
    Get-ChildItem -Path $toolsDir -Directory |
        Where-Object { $_.Name -ne 'npm' } |
        Select-Object -ExpandProperty Name
}

if (-not $Command) {
    Write-Host 'Verbs:' -ForegroundColor Cyan
    if ($verbs) { $verbs | ForEach-Object { Write-Host "  $_" } } else { Write-Host '  (none)' }
    Write-Host ''
    Write-Host 'Tools:' -ForegroundColor Cyan
    $tools = Get-Tools
    if ($tools) { $tools | ForEach-Object { Write-Host "  $_" } } else { Write-Host '  (none yet)' }
    Write-Host ''
    Write-Host 'Usage: ./run.ps1 <verb|tool> [args...]'
    exit 0
}

switch ($Command) {
    # slot: run-verbs-ps1
    default {
        $toolDir = Join-Path $toolsDir $Command
        $entry = Join-Path $toolDir "$Command.cs"
        if (-not (Test-Path $entry)) {
            Write-Error "Unknown verb or tool '$Command'. Run ./run.ps1 with no arguments to list both."
            exit 1
        }
        & dotnet run $entry -- @Rest
        exit $LASTEXITCODE
    }
}
