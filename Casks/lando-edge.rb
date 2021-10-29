cask "lando-edge" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.5.1"

  if Hardware::CPU.intel?
    sha256 "61d761711b0b3c6829a3d1e8376359717dca4186b44ef4d6254a4131c1ea34c5"
  else
    sha256 "f518f6580b9e9f68515a4eac986e81024faf873791cf37f21c707279d67e0a87"
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
