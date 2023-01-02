cask "hyper-canary" do
  arch arm: "arm64", intel: "x64"

  version "4.0.0-canary.1"
  sha256 arm:   "f69bfd7f10afba50723ae4511ea64f0a737896bb7b9872fd3e390998299b5113",
         intel: "b44cfe2acd5d7020a5e721b57ec04267628c1eb2009f3db25a6c1dc05f16abda"

  url "https://github.com/vercel/hyper/releases/download/v#{version}/Hyper-#{version}-mac-#{arch}.zip",
      verified: "github.com/vercel/hyper/"
  name "Hyper"
  desc "Terminal built on web technologies"
  homepage "https://hyper.is/"

  livecheck do
    url "https://releases-canary.hyper.is/"
    regex(/hyper-(\d+(?:\.\d+)*.+)-mac-#{arch}\.zip/i)
  end

  auto_updates true
  conflicts_with cask: "hyper"

  app "Hyper.app"
  binary "#{appdir}/Hyper.app/Contents/Resources/bin/hyper"

  zap trash: [
    "~/.hyper_plugins",
    "~/.hyper.js",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.zeit.hyper.sfl*",
    "~/Library/Application Support/Hyper",
    "~/Library/Caches/co.zeit.hyper.ShipIt",
    "~/Library/Caches/co.zeit.hyper",
    "~/Library/Cookies/co.zeit.hyper.binarycookies",
    "~/Library/Logs/Hyper",
    "~/Library/Preferences/ByHost/co.zeit.hyper.ShipIt.*.plist",
    "~/Library/Preferences/co.zeit.hyper.helper.plist",
    "~/Library/Preferences/co.zeit.hyper.plist",
    "~/Library/Saved Application State/co.zeit.hyper.savedState",
  ]
end
