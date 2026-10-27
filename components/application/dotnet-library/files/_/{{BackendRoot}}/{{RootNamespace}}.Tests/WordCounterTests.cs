namespace {{RootNamespace}}.Tests;

public class WordCounterTests
{
    [Theory]
    [InlineData("", 0)]
    [InlineData("   ", 0)]
    [InlineData("one", 1)]
    [InlineData("  one   two\tthree\n", 3)]
    public void Count_CountsWhitespaceSeparatedWords(string text, int expected)
    {
        Assert.Equal(expected, WordCounter.Count(text));
    }

    [Fact]
    public void Count_Throws_WhenTextIsNull()
    {
        Assert.Throws<ArgumentNullException>(() => WordCounter.Count(null!));
    }
}
