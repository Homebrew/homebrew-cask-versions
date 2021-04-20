cask "lando-edge" do
  version "3.1.2"
  sha256 "0db853b8077f6c2506972b6c5cd002eaedc48b4646cbf1db698dac71849457dc"

  url "https://github.com/lando/lando/releases/download/v#{version}/lando-v#{version}.dmg",
      verified: "github.com/lando/lando/"
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
