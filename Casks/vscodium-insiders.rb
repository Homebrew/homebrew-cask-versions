cask "vscodium-insiders" do
  arch arm: "arm64", intel: "x64"

  version "1.73.0.22293-insider"
  sha256 arm:   "6ad12c482fd5a2c93a380a1b5b3257b8f3c59e8f7d3a9311c1ca02236924f470",
         intel: "7e3b4361d8240df13453363dab09b08a9b8635cebcb1ea7f270715026357f427"

  url "https://github.com/VSCodium/vscodium-insiders/releases/download/#{version}/VSCodium.#{arch}.#{version}.dmg",
      verified: "github.com/VSCodium/vscodium-insiders/"
  name "VSCodium"
  name "VSCodium Insiders"
  desc "Code editor"
  homepage "https://vscodium.com/"

  app "VSCodium - Insiders.app"
  binary "#{appdir}/VSCodium - Insiders.app/Contents/Resources/app/bin/codium-insiders", target: "codium-insiders"

  zap trash: [
    "~/.vscodium-insiders",
    "~/Library/Application Support/VSCodium - Insiders",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.vscodiuminsiders.sfl*",
    "~/Library/Caches/VSCodium - Insiders",
    "~/Library/Caches/com.microsoft.VSCodiumInsiders.ShipIt",
    "~/Library/Caches/com.microsoft.VSCodiumInsiders",
    "~/Library/Preferences/com.microsoft.VSCodiumInsiders.helper.plist",
    "~/Library/Preferences/com.microsoft.VSCodiumInsiders.plist",
    "~/Library/Saved Application State/com.microsoft.VSCodiumInsiders.savedState",
  ]
end
