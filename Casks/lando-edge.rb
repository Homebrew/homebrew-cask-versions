cask "lando-edge" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.6.3"

  if Hardware::CPU.intel?
    sha256 "c393163105cf9ae13e90119476f4442375a603a0e44bd50465a8c7120dd109da"
  else
    sha256 "4dbba823259a458fcdd52efcf0dfb7eddcf33af142d6f2d20e1bf77766bce3b3"
  end

  url "https://github.com/lando/lando/releases/download/v#{version}/lando-#{arch}-v#{version}.dmg",
      verified: "github.com/lando/lando/"
  name "Lando Edge"
  desc "Local development environment and DevOps tool built on Docker"
  homepage "https://docs.lando.dev/"

  conflicts_with cask: "lando"
  depends_on cask: "docker"

  pkg "LandoInstaller.pkg",
      choices: [
        {
          "choiceIdentifier" => "choiceDocker",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "choiceLando",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall pkgutil: "dev.lando.pkg.lando"
end
