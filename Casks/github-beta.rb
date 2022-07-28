cask "github-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  platform = Hardware::CPU.intel? ? "darwin" : "darwin-arm64"

  version "3.0.6-beta2-706ecf57"

  if Hardware::CPU.intel?
    sha256 "162b5b1a481c5715a03f520277007fc0cf5d345989b32d2b1c68d0ca25533e78"
  else
    sha256 "2fa3751cc0084c51e6544d5ac32d62e5853a3a9293ad8955c4a94394769ae9ed"
  end

  url "https://desktop.githubusercontent.com/github-desktop/releases/#{version}/GitHubDesktop-#{arch}.zip",
      verified: "desktop.githubusercontent.com/github-desktop/"
  name "GitHub Desktop"
  desc "Desktop client for GitHub repositories"
  homepage "https://desktop.github.com/"

  livecheck do
    url "https://central.github.com/deployments/desktop/desktop/latest/#{platform}?env=beta"
    strategy :header_match
    regex(%r{(\d+(?:\.\d+)[^/]*)/GitHubDesktop[._-]#{arch}\.zip}i)
  end

  auto_updates true
  conflicts_with cask: "github"

  app "GitHub Desktop.app"
  binary "#{appdir}/GitHub Desktop.app/Contents/Resources/app/static/github.sh", target: "github"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.GitHubClient.sfl*",
        "~/Library/Application Support/com.github.GitHubClient",
        "~/Library/Application Support/com.github.GitHubClient.ShipIt",
        "~/Library/Application Support/GitHub Desktop",
        "~/Library/Application Support/ShipIt_stderr.log",
        "~/Library/Application Support/ShipIt_stdout.log",
        "~/Library/Caches/com.github.GitHubClient",
        "~/Library/Caches/com.github.GitHubClient.ShipIt",
        "~/Library/Logs/GitHub Desktop",
        "~/Library/Preferences/ByHost/com.github.GitHubClient.ShipIt.*.plist",
        "~/Library/Preferences/com.github.GitHubClient.helper.plist",
        "~/Library/Preferences/com.github.GitHubClient.plist",
      ],
      rmdir: "~/.config/git"
end
