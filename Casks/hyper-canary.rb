cask "hyper-canary" do
  version "3.0.1-canary.4"
  sha256 "d6c9d1d78769772f6afc431747c29488b9d4657fb1f892fef87f5d5040aa69ee"

  # github.com/zeit/hyper/ was verified as official when first introduced to the cask
  url "https://github.com/zeit/hyper/releases/download/#{version}/hyper-#{version}-mac.zip"
  appcast "https://github.com/zeit/hyper/releases.atom"
  name "Hyper"
  homepage "https://hyper.is/"

  auto_updates true

  app "Hyper.app"

  zap trash: [
    "~/.hyper.js",
    "~/.hyper_plugins",
    "~/Library/Application Support/Hyper",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.zeit.hyper.sfl*",
    "~/Library/Caches/co.zeit.hyper",
    "~/Library/Caches/co.zeit.hyper.ShipIt",
    "~/Library/Preferences/co.zeit.hyper.plist",
    "~/Library/Preferences/co.zeit.hyper.helper.plist",
    "~/Library/Saved Application State/co.zeit.hyper.savedState",
  ]
end
