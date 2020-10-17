cask "atom-beta" do
  version "1.53.0-beta0"
  sha256 "6ebd58c8b75d0047639fed5f9fae1c2e16142d2007911ca5b1aa9f65fdfe8e19"

  # github.com/atom/atom/ was verified as official when first introduced to the cask
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast "https://github.com/atom/atom/releases.atom"
  name "Github Atom Beta"
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
