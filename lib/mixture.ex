defmodule Mixture do
  use Application

  require Logger
  require JSON
  require Enum

  def main(args) do
    Logger.info("Hello world")
    options = [switches: [file: :string],aliases: [f: :file]]
    {opts,_,_}= OptionParser.parse(args, options)
    IO.inspect opts, label: "Command Line Arguments"
    {:ok, self()}
  end

  def start(:normal, []) do
    IO.puts("TODO")
    {:ok, self()}
  end

  def get_worklog(task) do
    jira_domain = System.get_env("JIRA_DOMAIN") || raise("no env variable JIRA_DOMAIN provided")
    jira_login = System.get_env("JIRA_LOGIN") || raise("no env variable JIRA_LOGIN provided")
    jira_token = System.get_env("JIRA_API_TOKEN") || raise("no env variable JIRA_API_TOKEN provided")

    resp_json = Request.send(
      :get,
      to_charlist("#{jira_domain}/rest/api/2/issue/#{task}/worklog"),
      [
        {to_charlist("Authorization"), to_charlist("Basic " <> Base.encode64("#{jira_login}:#{jira_token}"))}
      ]
    )
    decoded_resp = JSON.decode!(resp_json)
    short_worklogs = Enum.map(decoded_resp["worklogs"], fn(worklog) -> {worklog["created"], worklog["timeSpent"], worklog["author"]["displayName"], worklog["author"]["emailAddress"]} end)

    IO.puts(JSON.encode!(short_worklogs))
  end

  def hello do
    :world
  end
end
