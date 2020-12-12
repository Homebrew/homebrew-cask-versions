cask "ferdi-beta" do
  version "5.6.0-beta.2"
  sha256 "028d42471c259498d82a81e2bba216770111d15a9e064b4b8e765936920f9573"

  url "https://github.com/getferdi/ferdi/releases/download/#{version}/Ferdi-#{version}.dmg",
      verified: "github.com/getferdi/ferdi/"
  appcast "https://github.com/getferdi/ferdi/releases.atom"
  name "Ferdi"
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
