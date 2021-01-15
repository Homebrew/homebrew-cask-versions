cask "keepassxc-beta" do
  version "2.6.3"

  if MacOS.version <= :sierra
    url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}-Sierra.dmg",
        verified: "github.com/keepassxreboot/keepassxc/"
    sha256 "7cd8dc34022091c240e538f7a9889afd7dc8f9f3957a66bca9d70c067045ade4"
  else
    url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg",
        verified: "github.com/keepassxreboot/keepassxc/"
    sha256 "3b2e86aafa6943771f008ec530d0809b12f1a09773838f8e0e79ed71061a3c36"
  end

  appcast "https://github.com/keepassxreboot/keepassxc/releases.atom"
  name "KeePassXC"
  desc "Password manager app"
  homepage "https://keepassxc.org/"

  conflicts_with cask: "keepassxc"
  depends_on macos: ">= :sierra"

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
