# TPI: A blazing fast package manager

Very much a work in progress

## Development

Install these packages to develop:
- Elixir (For CLI and Web)
- Erlang (For CLI and Web)
- inotify-tools (For Web)
- Postgres (For Web)
- SQLite3 (For CLI)

### Web
```sh
mix cmd --app tpi_web mix phx.server
```

### Cli
```shell
mix escript.build -o tpi_cli
```

## License
For more details see the attached [LICENSE](LICENSE.md) file!
