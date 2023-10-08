{
  description = "Pokedex project with pure Elixir + ClickHouse database";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        packages = {
          elixir = pkgs.elixir;
          erlang = pkgs.erlang;
          clickhouse = pkgs.clickhouse;
        };

        devShell = pkgs.mkShell {
          buildInputs = [ pkgs.elixir pkgs.erlang pkgs.clickhouse ];
        };

        nixosConfigurations.pokedex = pkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            {
              services.clickhouse.enable = true;

              environment.systemPackages = with pkgs; [
                elixir erlang clickhouse
              ];
            }
          ];
        };
      }
    );
}
