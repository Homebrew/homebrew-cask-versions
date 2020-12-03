cask "lando-edge" do
  version "3.0.22"
  sha256 "cae4602a0200eaf13d35c8a661d4cf533cd926667cd252a93dd45a3be97772ef"

  # github.com/lando/lando/ was verified as official when first introduced to the cask
  url "https://github.com/lando/lando/releases/download/v#{version}/lando-v#{version}.dmg"
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
