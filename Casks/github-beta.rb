cask "github-beta" do
  version "2.9.3-beta1-2f6fc3d9"

  if Hardware::CPU.intel?
    sha256 "b340120fd02ffd5a08fbd22f83b89fed60b0d0c2c30854a161e3d4ee01b3ac3d"

    url "https://desktop.githubusercontent.com/github-desktop/releases/#{version}/GitHubDesktop-x64.zip",
        verified: "desktop.githubusercontent.com/"
  else
    sha256 "282f2601b01718d4e644dc7517f30b9652f208552d838f42e0754426650318eb"

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
