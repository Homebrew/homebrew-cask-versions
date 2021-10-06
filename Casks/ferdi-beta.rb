cask "ferdi-beta" do
  version "5.6.3-beta.1"

  if Hardware::CPU.intel?
    sha256 "4825fbbcf4a7016f8722ea476a3d521d7ac88fcb744f7f899f61f07cfdf554d8"

    url "https://github.com/getferdi/ferdi/releases/download/v#{version}/Ferdi-#{version}.dmg",
        verified: "github.com/getferdi/ferdi/"
  else
    sha256 "92a1c2e6d4015395be43b2261fa1e06f9074c0252c57f338b997dcccf0091ba8"

    url "https://github.com/getferdi/ferdi/releases/download/v#{version}/Ferdi-#{version}-arm64.dmg",
        verified: "github.com/getferdi/ferdi/"
  end

  name "Ferdi"
  desc "Messaging browser which combines several services"
  homepage "https://getferdi.com/"

  livecheck do
    url "https://github.com/getferdi/ferdi/releases/"
    strategy :page_match
    regex(/Ferdi[._-](\d+(?:\.\d+)*((?:[._-]beta)?)*([._-]\d+)?)\.dmg/i)
  end

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
