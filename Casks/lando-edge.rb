cask "lando-edge" do
  arch arm: "arm64", intel: "x64"

  version "3.8.0"
  sha256 arm:   "e35688610dbdbfdee77e50da73f1eab8b24a83be4f3e2e7aefe3477d6e166212",
         intel: "1c1dc34e102e7f7d31f046ea71cf38fcf6f3286b0e7374990786bebc2169a23d"

  url "https://github.com/lando/lando/releases/download/v#{version}/lando-#{arch}-v#{version}.dmg",
      verified: "github.com/lando/lando/"
  name "Lando Edge"
  desc "Local development environment and DevOps tool built on Docker"
  homepage "https://docs.lando.dev/"

  livecheck do
    url "https://github.com/lando/lando/releases?q=prerelease%3Atrue&expanded=true"
    regex(%r{href=["']?[^"' >]*?/tag/\D*?(\d+(?:\.\d+)+)[^"' >]*?["' >]}i)
    strategy :page_match
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
