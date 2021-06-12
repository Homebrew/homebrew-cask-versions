cask "keepassxc-beta" do
  version "2.6.5"

  if Hardware::CPU.intel?
    url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}-x86_64.dmg",
        verified: "github.com/keepassxreboot/keepassxc/"
    sha256 "b15008d6ab19ef2449f4941bad71dca8d1406929daa36453e379c9e3214a6e47"
  else
    url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}-arm64.dmg",
        verified: "github.com/keepassxreboot/keepassxc/"
    sha256 "5f8cd4443191ad9340bff99a842d54d66dae29f29dc5b6f22135313b4110717a"
  end

  name "KeePassXC"
  desc "Password manager app"
  homepage "https://keepassxc.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "keepassxc"
  depends_on macos: ">= :high_sierra"

  app "KeePassXC.app"
  binary "#{appdir}/KeePassXC.app/Contents/MacOS/keepassxc-cli"

  zap trash: [
    "~/.keepassxc",
    "~/Library/Application Support/keepassxc",
    "~/Library/Caches/org.keepassx.keepassxc",
    "~/Library/Preferences/org.keepassx.keepassxc.plist",
    "~/Library/Saved Application State/org.keepassx.keepassxc.savedState",
    "~/Library/Logs/DiagnosticReports/KeePassXC_*.crash",
    "~/Library/Application Support/CrashReporter/KeePassXC_*.plist",
  ]
end
