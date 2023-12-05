{ pkgs, ... }:

{
  home.packages = with pkgs; [
    awscli2
    cargo
    curl
    docker-credential-helpers
    eksctl
    fd
    fluxcd
    fx
    gcc
    gitui
    go_1_21
    htop
    httpie
    jq
    kubectl
    kubelogin
    kubernetes-helm
    lf
    meslo-lgs-nf
    nixfmt
    nodejs
    packer
    page
    powershell
    python311
    python311Packages.pip
    ranger
    ripgrep
    slides
    sops
    statix
    tree-sitter
    unzip
    viddy
    wget
    wl-clipboard
    xplr
    yq
    zellij
  ];
}
