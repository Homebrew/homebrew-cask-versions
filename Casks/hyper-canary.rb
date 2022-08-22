cask "hyper-canary" do
  arch arm: "arm64", intel: "x64"

  version "3.4.0-canary.1"

  on_intel do
    sha256 "e1ca5dd3685613bc944c03285611ac2739c450800ed35048edaa9f69458ddfeb"
  end
  on_arm do
    sha256 "66b3550de27ec0afde359e6fd5105176bd6446a7cfc11964636156bcbfb8724f"
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
