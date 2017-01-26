require SocialTables

defmodule Preston.CLI do
  def main(args \\ []) do
    meRes = SocialTables.me()

    IO.puts(meRes.body.code)
  end
end
