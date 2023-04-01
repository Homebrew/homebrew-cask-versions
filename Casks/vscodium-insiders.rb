cask "vscodium-insiders" do
  arch arm: "arm64", intel: "x64"

  version "1.78.0.23090-insider"
  sha256 arm:   "23538391f617f6191640bb736d4b87a54eab483a2de693b4d1bd075e3c727979",
         intel: "870e20c0b9d402de404efd8a1b2682cebfbc838f012f1fd356acb32d2ebfa19b"

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
