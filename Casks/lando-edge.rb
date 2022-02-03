cask "lando-edge" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.6.2"

  if Hardware::CPU.intel?
    sha256 "a32692e8b25365b40ad125114df8eaa10ef3ed171f251a1cd3fedc8117175d76"
  else
    sha256 "514d244ec465ed552c1d05a153695dc232e264a3d3f6394392b5deeaae7bf803"
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
