cask "ferdi-beta" do
  version "5.6.1-beta.1"

  if Hardware::CPU.intel?
    sha256 "f1d7773f4b08b8acf00c49957484c2042ad2f8614233fc8aed3210a385b7522b"

    url "https://github.com/getferdi/ferdi/releases/download/v#{version}/Ferdi-#{version}.dmg",
        verified: "github.com/getferdi/ferdi/"
  else
    sha256 "7811447b3cf52340a0bfc3823c328f51a57d756963c14babbc7365fc179ecdb1"

    url "https://github.com/getferdi/ferdi/releases/download/v#{version}/Ferdi-#{version}-arm64.dmg",
        verified: "github.com/getferdi/ferdi/"
  end

  name "Ferdi"
  desc "Messaging browser which combines several services"
  homepage "https://getferdi.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-]beta[._-]\d+)$/i)
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
