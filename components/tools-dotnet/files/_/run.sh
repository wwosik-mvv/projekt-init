#!/usr/bin/env bash
# Human-facing launcher. A reserved verb runs a built-in action; anything else is treated as
# the name of a tool under ./tools. Run with no arguments to list both.
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
tools_dir="$repo_root/tools"
verbs=(
    # slot: run-verbs-list-sh
)

list() {
    echo "Verbs:"
    if [ ${#verbs[@]} -gt 0 ]; then printf '  %s\n' "${verbs[@]}"; else echo "  (none)"; fi
    echo
    echo "Tools:"
    if [ -d "$tools_dir" ]; then
        find "$tools_dir" -mindepth 1 -maxdepth 1 -type d -not -name npm -printf '  %f\n' | sort
    else
        echo "  (none yet)"
    fi
    echo
    echo "Usage: $0 <verb|tool> [args...]"
}

command="${1:-}"
[ -z "$command" ] && { list; exit 0; }
shift

case "$command" in
    # slot: run-verbs-sh
    *)
        entry="$tools_dir/$command/$command.cs"
        if [ ! -f "$entry" ]; then
            echo "Unknown verb or tool '$command'. Run $0 with no arguments to list both." >&2
            exit 1
        fi
        exec dotnet run "$entry" -- "$@"
        ;;
esac
