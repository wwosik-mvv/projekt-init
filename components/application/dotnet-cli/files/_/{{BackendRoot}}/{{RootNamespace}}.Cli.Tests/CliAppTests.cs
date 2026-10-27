using System.CommandLine;

namespace {{RootNamespace}}.Cli.Tests;

public class CliAppTests
{
    [Fact]
    public async Task Count_WritesTheWordCount_AndReturnsZero()
    {
        var output = new StringWriter();

        var exitCode = await CliApp.Create()
            .Parse(["count", "one two three"])
            .InvokeAsync(new InvocationConfiguration { Output = output });

        Assert.Equal(0, exitCode);
        Assert.Contains("3", output.ToString());
    }

    [Fact]
    public async Task Count_ReturnsNonZero_WhenTheArgumentIsMissing()
    {
        var exitCode = await CliApp.Create()
            .Parse(["count"])
            .InvokeAsync(new InvocationConfiguration { Output = new StringWriter(), Error = new StringWriter() });

        Assert.NotEqual(0, exitCode);
    }
}
