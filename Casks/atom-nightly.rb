cask "atom-nightly" do
  version "1.63.0-nightly1"
  sha256 "50d34ac7d66627749f509df7535078372c9e4e8ce2e82b70de2870147933457f"

  url "https://atom-installer.github.com/v#{version}/atom-mac.zip",
      verified: "atom-installer.github.com/"
  name "Github Atom Nightly"
  desc "Cross-platform text editor"
  homepage "https://atom.io/nightly"

  app "Atom Nightly.app"
  binary "#{appdir}/Atom Nightly.app/Contents/Resources/app/apm/bin/apm", target: "apm-nightly"
  binary "#{appdir}/Atom Nightly.app/Contents/Resources/app/atom.sh", target: "atom-nightly"

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

  caveats do
    discontinued
  end
end
