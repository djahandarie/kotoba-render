{ pkgs ? import <nixpkgs> {} }:

let
  lib = import <nixpkgs/lib>;

  NPM_CONFIG_PREFIX = toString ./npm_config_prefix;

in pkgs.mkShell {
  packages = with pkgs; [
    nodejs-16_x
    nodePackages.npm
    libuuid
  ];

  inherit NPM_CONFIG_PREFIX;
  LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [pkgs.libuuid];

  shellHook = ''
    export PATH="${NPM_CONFIG_PREFIX}/bin:$PATH"
  '';
}