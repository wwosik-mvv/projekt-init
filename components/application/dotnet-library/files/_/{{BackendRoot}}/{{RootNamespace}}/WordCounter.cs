namespace {{RootNamespace}};

/// <summary>Placeholder public API; replace with the library's real surface.</summary>
public static class WordCounter
{
    /// <summary>Counts the whitespace-separated words in <paramref name="text"/>.</summary>
    public static int Count(string text)
    {
        ArgumentNullException.ThrowIfNull(text);

        return text.Split((char[]?)null, StringSplitOptions.RemoveEmptyEntries).Length;
    }
}
