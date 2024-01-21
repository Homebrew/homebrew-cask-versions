cask "vscodium-insiders" do
  arch arm: "arm64", intel: "x64"

  version "1.85.0.23310-insider"
  sha256 arm:   "a0f0915b0eeed74d4fc17b2dbfcef40665d234c8777a2a67c35f30e99e734f5f",
         intel: "fd6b0e6c6037f89f624580f7f6178761f608d8f5305cc52b6f025c309f06ee24"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.vscodiuminsiders.sfl*",
    "~/Library/Application Support/VSCodium - Insiders",
    "~/Library/Caches/com.microsoft.VSCodiumInsiders",
    "~/Library/Caches/com.microsoft.VSCodiumInsiders.ShipIt",
    "~/Library/Caches/VSCodium - Insiders",
    "~/Library/Preferences/com.microsoft.VSCodiumInsiders.helper.plist",
    "~/Library/Preferences/com.microsoft.VSCodiumInsiders.plist",
    "~/Library/Saved Application State/com.microsoft.VSCodiumInsiders.savedState",
  ]
end
