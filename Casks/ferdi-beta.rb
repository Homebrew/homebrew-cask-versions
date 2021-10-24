cask "ferdi-beta" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.6.3-beta.2"

  if Hardware::CPU.intel?
    sha256 "70d7daae1ac30d1127c4c0f73b10df4da5e9388ee1cd308f2db799269f11f04a"
  else
    sha256 "ca65bdad34d0a53c6ba3c7db76efcbba2fc6a25fcae20d3ea3d7ac130e2379b5"
  end

  url "https://github.com/getferdi/ferdi/releases/download/v#{version}/Ferdi-#{version}#{arch}.dmg",
      verified: "github.com/getferdi/ferdi/"
  name "Ferdi"
  desc "Messaging browser which combines several services"
  homepage "https://getferdi.com/"

  livecheck do
    url :url
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*((?:[._-]beta)?)*([._-]\d+)?)$/i)
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
