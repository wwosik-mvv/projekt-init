using System.CommandLine;

namespace {{RootNamespace}}.Cli;

public static class CliApp
{
    public static RootCommand Create()
    {
        var text = new Argument<string>("text") { Description = "Tekst, w którym liczone są słowa" };

        var count = new Command("count", "Policz słowa w tekście") { text };
        count.SetAction(parseResult =>
        {
            var words = WordCounter.Count(parseResult.GetValue(text)!);
            parseResult.InvocationConfiguration.Output.WriteLine($"Słowa: {words}");
        });

        return new RootCommand("{{ProjectName}}") { count };
    }
}
