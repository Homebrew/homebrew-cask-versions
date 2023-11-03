cask "vscodium-insiders" do
  arch arm: "arm64", intel: "x64"

  version "1.85.0.23307-insider"
  sha256 arm:   "2c0c1388e75ede3c42874a2e11735d0be11c160c57be98ba4164db9558b028db",
         intel: "a64c6b365c47c1393291f3386aca64a2dbf66aac67edcd72a914688f8551a59a"

  url "https://github.com/VSCodium/vscodium-insiders/releases/download/#{version}/VSCodium.#{arch}.#{version}.dmg",
      verified: "github.com/VSCodium/vscodium-insiders/"
  name "VSCodium"
  name "VSCodium Insiders"
  desc "Code editor"
  homepage "https://vscodium.com/"

  depends_on macos: ">= :high_sierra"

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
