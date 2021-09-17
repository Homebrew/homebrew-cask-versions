cask "lando-edge" do
  version "3.4.0"

  if Hardware::CPU.intel?
    sha256 "72a2b7aacca6acc588171bcf3a27365d740402047088444db7d9131125aae8f7"

    url "https://github.com/lando/lando/releases/download/v#{version}/lando-x64-v#{version}.dmg",
        verified: "github.com/lando/lando/"
  else
    sha256 "d893bf5e84b0a31d252af69fa43a837037690f88f8caf45f520097c33d61368a"

    url "https://github.com/lando/lando/releases/download/v#{version}/lando-arm64-v#{version}.dmg",
        verified: "github.com/lando/lando/"
  end

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
