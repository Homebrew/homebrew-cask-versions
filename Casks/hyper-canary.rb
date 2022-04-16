cask "hyper-canary" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.3.0-canary.2"

  if Hardware::CPU.intel?
    sha256 "1743ca816edab631d472a28b5ddcac872d45684c8bb82c5c153eb2fb2ab30b64"
  else
    sha256 "03642fc6e1a84164657297eecadb9fb3858d07c5d66401109601eb36fc27112a"
  end

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
