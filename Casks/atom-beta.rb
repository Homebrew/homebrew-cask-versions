cask "atom-beta" do
  version "1.54.0-beta0"
  sha256 "f919563d014511d90caf3add54fd6f51a8f44b264771399385ea784dc108ad62"

  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip",
      verified: "github.com/atom/atom/"
  appcast "https://github.com/atom/atom/releases.atom"
  name "Github Atom Beta"
  desc "Cross-platform text editor"
  homepage "https://atom.io/beta"

  auto_updates true

  app "Atom Beta.app"
  binary "#{appdir}/Atom Beta.app/Contents/Resources/app/apm/bin/apm", target: "apm-beta"
  binary "#{appdir}/Atom Beta.app/Contents/Resources/app/atom.sh", target: "atom-beta"

  zap trash: [
    "~/.atom",
    "~/Library/Application Support/Atom",
    "~/Library/Application Support/ShipIt_stderr.log",
    "~/Library/Application Support/ShipIt_stdout.log",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.atom.sfl*",
    "~/Library/Application Support/com.github.atom.ShipIt",
    "~/Library/Caches/com.github.atom",
    "~/Library/Caches/com.github.atom.ShipIt",
    "~/Library/Logs/Atom",
    "~/Library/Preferences/com.github.atom.helper.plist",
    "~/Library/Preferences/com.github.atom.plist",
    "~/Library/Saved Application State/com.github.atom.savedState",
  ]
end
