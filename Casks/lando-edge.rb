cask "lando-edge" do
  arch arm: "arm64", intel: "x64"

  version "3.9.1"
  sha256 arm:   "2f5a06ba0c31eae1328f0291fa67b854202535970c171ae40e940845a32f5713",
         intel: "3e0321daa158800e6ec09eb8664d563102f800f0e11fc9664e3a7128f674f41d"

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
