# Pokedex

## Stack

- Erlang/OTP 25.0
- Elixir 1.15.6 
- ClickHouse Database

## Getting Started

### Prerequisites for running Pokedex on a Nix Flake

The fastest and friendly way for running Pokedex is through a Nix Flake, which will set up all the dependencies and environments required. Make sure you've got the following:
- [Nix](https://nixos.org/download.html): The package manager
- [Direnv](https://direnv.net/): An extension for your shell, **must be a version above 2.30** To install Direnv with a binary, [see this link](https://direnv.net/docs/installation.html#from-binary-builds).

1.1 Install Nix on your machine, then run this command only once:
- for BASH:
```shell
eval "$(direnv hook bash)"
```
- for ZSH:
```shell
eval "$(direnv hook zsh)"
```

1.2 [Hook `direnv`` to your shell file](https://direnv.net/docs/hook.html)

2. Restart your shell and run
```shell
direnv allow
```

3. Run `mix deps.get`.

And that's it! 