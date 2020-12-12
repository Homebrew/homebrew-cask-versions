cask "darktable-dev" do
  version "3.0.0rc1"
  sha256 "eb874c80648b26c3b91db7ff77fadef858bd24fcccd63da1ebfdd97a896c00e5"

  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg",
      verified: "github.com/darktable-org/darktable/"
  appcast "https://github.com/darktable-org/darktable/releases.atom"
  name "darktable"
  homepage "https://www.darktable.org/"

  conflicts_with cask: "darktable"

  app "darktable.app"
end
