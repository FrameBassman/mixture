import Config

case Mix.env() do
       :test -> config :junit_formatter,
                        report_file: "junit_report.xml",
                        report_dir: "_build/",
                        print_report_file: true,
                        prepend_project_name?: true

       :dev -> nil
       :prod -> nil
end
