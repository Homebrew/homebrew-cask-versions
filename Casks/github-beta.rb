cask "github-beta" do
  version "2.9.4-beta1-6d21ead7"

  if Hardware::CPU.intel?
    sha256 "f2145a101a2301685f075c4d593ee779f5f53c86912715de8612d95ad9401ecf"

    url "https://desktop.githubusercontent.com/github-desktop/releases/#{version}/GitHubDesktop-x64.zip",
        verified: "desktop.githubusercontent.com/"
  else
    sha256 "a2144515bf5245514c10847fec7e174e1bab61fbfee212a18880a7a44bff1a67"

    url "https://desktop.githubusercontent.com/github-desktop/releases/#{version}/GitHubDesktop-arm64.zip",
        verified: "desktop.githubusercontent.com/"
  end

  name "GitHub Desktop"
  desc "Desktop client for GitHub repositories"
  homepage "https://desktop.github.com/"

  livecheck do
    url "https://central.github.com/deployments/desktop/desktop/latest/darwin?env=beta"
    strategy :header_match
    regex(%r{(\d+(?:\.\d+)[^/]*)/GitHubDesktop-x64\.zip}i)
  end

  auto_updates true
  conflicts_with cask: "github"

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
