cask "lando-edge" do
  arch arm: "arm64", intel: "x64"

  version "3.9.0"
  sha256 arm:   "131bf94b9ecb5ffbff7532c6c059fff9303f8ff63b244e4af1bc3feb4f65d139",
         intel: "5e1b647dfcce25d89e3d9df77e5321228092e1425fd4779a1e37fd7e8884383b"

  url "https://github.com/lando/lando/releases/download/v#{version}/lando-#{arch}-v#{version}.dmg",
      verified: "github.com/lando/lando/"
  name "Lando Edge"
  desc "Local development environment and DevOps tool built on Docker"
  homepage "https://docs.lando.dev/"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

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
