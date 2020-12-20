cask "ferdi-beta" do
  version "5.6.0-beta.5"
  sha256 "6ffcb4a287ebb9e596d8a116d6132b63473064e5f579fbb361f0fd61e8ff4740"

  url "https://github.com/getferdi/ferdi/releases/download/v#{version}/Ferdi-#{version}.dmg",
      verified: "github.com/getferdi/ferdi/"
  appcast "https://github.com/getferdi/ferdi/releases.atom"
  name "Ferdi"
  desc "App to accumulate all fav browser-based websites/apps into a single thick client"
  homepage "https://getferdi.com/"

  auto_updates true
  conflicts_with cask: "ferdi"

  app "Ferdi.app"

  uninstall quit:   "com.kytwb.ferdi",
            delete: "/Library/Logs/DiagnosticReports/Ferdi Helper_.*wakeups_resource.diag"

  zap trash: [
    "~/Library/Application Support/Caches/ferdi-updater",
    "~/Library/Application Support/Ferdi",
    "~/Library/Caches/com.kytwb.ferdi",
    "~/Library/Caches/com.kytwb.ferdi.ShipIt",
    "~/Library/Logs/Ferdi",
    "~/Library/Preferences/ByHost/com.kytwb.ferdi.ShipIt.*.plist",
    "~/Library/Preferences/com.electron.ferdi.helper.plist",
    "~/Library/Preferences/com.electron.ferdi.plist",
    "~/Library/Preferences/com.kytwb.ferdi.plist",
    "~/Library/Saved Application State/com.kytwb.ferdi.savedState",
  ]
end
