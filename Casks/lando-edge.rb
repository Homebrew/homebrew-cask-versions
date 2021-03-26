cask "lando-edge" do
  version "3.0.27"
  sha256 "b92e422c16b129894d2f68e0cd6151487a1cb9edf2f584785bc781caf2ad50c9"

  url "https://github.com/lando/lando/releases/download/v#{version}/lando-v#{version}.dmg",
      verified: "github.com/lando/lando/"
  appcast "https://github.com/lando/lando/releases.atom"
  name "Lando Edge"
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

  uninstall pkgutil: "io.lando.pkg.lando"
end
