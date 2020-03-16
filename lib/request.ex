defmodule Request do
  def send(method \\ :get, url, headers \\ []) do
     Application.ensure_all_started(:inets)
     Application.ensure_all_started(:ssl)

    {:ok, {{'HTTP/1.1', 200, []}, _headers, body}}
      = :httpc.request(method, {url, headers}, [], [])

     body
  end
end
