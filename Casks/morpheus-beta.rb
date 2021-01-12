cask "morpheus-beta" do
  version "2.2.0_rc1"
  sha256 "3df70eb4eafbfa1a8a95ff1a15676651a1fa2ef10dcc0038655a7bc44eebf72a"

  url "https://imc.zih.tu-dresden.de/morpheus/packages/mac/Morpheus-#{version}.dmg",
      verified: "imc.zih.tu-dresden.de/morpheus/"
  appcast "https://morpheus.gitlab.io/download/"
  name "Morpheus"
  desc "Modelling environment for multi-cellular systems biology"
  homepage "https://morpheus.gitlab.io/"

  conflicts_with cask: "morpheus"

  app "Morpheus.app"

  zap trash: [
    "~/Library/Application Support/data/Morpheus",
    "~/Library/Application Support/Morpheus",
    "~/Library/Application Support/CrashReporter/morpheus_*.plist",
    "~/Library/Caches/Morpheus",
    "~/Library/Preferences/morpheus-gui.plist",
    "~/Library/Preferences/io.gitlab.morpheus.morpheus.plist",
    "~/Library/Preferences/de.tu-dresden.Morpheus.plist",
    "~/Library/Preferences/org.morpheus.Morpheus.plist",
    "~/Library/Saved Application State/de.tu-dresden.Morpheus.savedState",
    "~/Library/Saved Application State/io.gitlab.morpheus.morpheus.savedState",
  ]
end
