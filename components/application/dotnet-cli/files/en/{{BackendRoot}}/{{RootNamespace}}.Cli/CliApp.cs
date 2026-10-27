using System.CommandLine;

namespace {{RootNamespace}}.Cli;

public static class CliApp
{
    public static RootCommand Create()
    {
        var text = new Argument<string>("text") { Description = "The text to count words in" };

        var count = new Command("count", "Count the words in a text") { text };
        count.SetAction(parseResult =>
        {
            var words = WordCounter.Count(parseResult.GetValue(text)!);
            parseResult.InvocationConfiguration.Output.WriteLine($"Words: {words}");
        });

        return new RootCommand("{{ProjectName}}") { count };
    }
}
