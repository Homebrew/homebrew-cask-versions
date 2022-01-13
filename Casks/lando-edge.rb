cask "lando-edge" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.6.1"

  if Hardware::CPU.intel?
    sha256 "1ac7b337f40599a42dd6e2ed8c9fceadacdec99bbb028a393d74d42b7b4045fc"
  else
    sha256 "399dd6690ed9b42469094bcfe4cf74c82f64f1fa67471651a3c9763e16b7eb0c"
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
