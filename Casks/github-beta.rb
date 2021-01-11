cask "github-beta" do
  version "2.6.2-beta2-beb45b7e"
  sha256 "1d2843e73352518ede47382601d43f2adb63beb06e16534c260bb5b462feb720"

  url "https://desktop.githubusercontent.com/releases/#{version}/GitHubDesktop.zip",
      verified: "desktop.githubusercontent.com/"
  appcast "https://github.com/desktop/desktop/releases.atom"
  name "GitHub Desktop"
  homepage "https://desktop.github.com/"

  auto_updates true

  app "GitHub Desktop.app"
  binary "#{appdir}/GitHub Desktop.app/Contents/Resources/app/static/github.sh", target: "github"

  zap trash: [
    "~/Library/Application Support/GitHub Desktop",
    "~/Library/Application Support/com.github.GitHubClient",
    "~/Library/Application Support/com.github.GitHubClient.ShipIt",
    "~/Library/Application Support/ShipIt_stderr.log",
    "~/Library/Application Support/ShipIt_stdout.log",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.GitHubClient.sfl*",
    "~/Library/Caches/com.github.GitHubClient",
    "~/Library/Caches/com.github.GitHubClient.ShipIt",
    "~/Library/Preferences/com.github.GitHubClient.helper.plist",
    "~/Library/Preferences/com.github.GitHubClient.plist",
  ],
      rmdir: "~/.config/git"
end
