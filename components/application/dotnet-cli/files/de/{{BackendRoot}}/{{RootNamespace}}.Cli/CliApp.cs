using System.CommandLine;

namespace {{RootNamespace}}.Cli;

public static class CliApp
{
    public static RootCommand Create()
    {
        var text = new Argument<string>("text") { Description = "Der Text, dessen Wörter gezählt werden" };

        var count = new Command("count", "Wörter in einem Text zählen") { text };
        count.SetAction(parseResult =>
        {
            var words = WordCounter.Count(parseResult.GetValue(text)!);
            parseResult.InvocationConfiguration.Output.WriteLine($"Wörter: {words}");
        });

        return new RootCommand("{{ProjectName}}") { count };
    }
}
