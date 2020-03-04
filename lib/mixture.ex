defmodule Mixture do
  require Logger

  def main(args) do
    Logger.info("Hello world")
    options = [switches: [file: :string],aliases: [f: :file]]
    {opts,_,_}= OptionParser.parse(args, options)
    IO.inspect opts, label: "Command Line Arguments"
  end

  def hello do
    :world
  end
end
