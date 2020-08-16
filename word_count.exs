filename = IO.gets("File to count the words from: ") |> String.trim()
words = File.read!(filename)
        |> String.split(~r{(\\n|[^\w'])+}) #regex to split on any word or new line
        |> Enum.filter(fn x -> x != "" end)
IO.inspect words
words
    |> Enum.count()
    |> IO.puts()
