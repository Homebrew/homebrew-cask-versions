cask "hyper-canary" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.2.0-canary.1"

  if Hardware::CPU.intel?
    sha256 "119d8f1e3a469acfc7a6e2a16e09309afbf735f09a44f6dce9f6d400d07931b9"
  else
    sha256 "74afe9f64c29afe91d29020b6b48a969c1ab0c0d3670732b0196558bd9046d04"
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
