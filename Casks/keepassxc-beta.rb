cask "keepassxc-beta" do
  arch arm: "arm64", intel: "x86_64"

  version "2.7.1"

  if Hardware::CPU.intel?
    sha256 "473f994698ec082f16bb20b4824dadbfb744f53a01b737b4016f6cc45f403b83"
  else
    sha256 "97e7c57b4695cf4a558186cd36b89605ec6d6dec8791f7add043a3a387089f01"
  end

  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}-#{arch}.dmg",
      verified: "github.com/keepassxreboot/keepassxc/"
  name "KeePassXC"
  desc "Password manager app"
  homepage "https://keepassxc.org/"

  conflicts_with cask: "keepassxc"
  depends_on macos: ">= :high_sierra"

  app "KeePassXC.app"
  binary "#{appdir}/KeePassXC.app/Contents/MacOS/keepassxc-cli"

  uninstall quit: "org.keepassxc.keepassxc"

  zap trash: [
    "~/.keepassxc",
    "~/Library/Application Support/CrashReporter/KeePassXC_*.plist",
    "~/Library/Application Support/keepassxc",
    "~/Library/Caches/org.keepassx.keepassxc",
    "~/Library/Logs/DiagnosticReports/KeePassXC_*.crash",
    "~/Library/Preferences/org.keepassx.keepassxc.plist",
    "~/Library/Saved Application State/org.keepassx.keepassxc.savedState",
  ]
end
