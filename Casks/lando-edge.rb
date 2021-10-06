cask "lando-edge" do
  version "3.4.3"

  if Hardware::CPU.intel?
    sha256 "5e8527125dc29e54a5353dab141836830fdfcd11fe2f78ac75b7d60da89caee4"

    url "https://github.com/lando/lando/releases/download/v#{version}/lando-x64-v#{version}.dmg",
        verified: "github.com/lando/lando/"
  else
    sha256 "7b2a7219c8dcb08f6494262754fcdedc782ecc2bb6b51aac32f437109ce12647"

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
