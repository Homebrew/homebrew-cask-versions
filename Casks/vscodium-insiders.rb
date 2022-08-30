cask "vscodium-insiders" do
  arch arm: "arm64", intel: "x64"

  version "1.71.0.22241-insider"
  sha256 arm:   "649c6081b5c6a624d941c9ecd6f5c7ef2a4f974c50697a9c61bb5a29902929f1",
         intel: "0082a9c1955829eb41fc192490c7129460637df6b1c25e4dc07cb1f15048336b"

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
