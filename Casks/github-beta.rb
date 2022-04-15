cask "github-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  platform = Hardware::CPU.intel? ? "darwin" : "darwin-arm64"

  version "2.9.15-beta1-d4054a37"

  if Hardware::CPU.intel?
    sha256 "cb9cb3031ad0a132b2a35a30fc4160bc81042d12d70594c68531fb67a4eb6fb8"
  else
    sha256 "c59dcb0992b39ef40c0520153b365bfcc37f0c11a35b04545e8030a0144d3785"
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
