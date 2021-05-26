cask "github-beta" do
  version "2.8.3-beta1-4d262600"

  if Hardware::CPU.intel?
    sha256 "de420dba0101380d400edfa040c8eb2d14fe6aaaa7d8d77d122764b90d6a307f"

    url "https://desktop.githubusercontent.com/releases/#{version}/GitHubDesktop-x64.zip",
        verified: "desktop.githubusercontent.com/"
  else
    sha256 "600dd76d95cfb7b0ab790ea4c411b656d1f71b35eb91793bef16fae853a79844"

    url "https://desktop.githubusercontent.com/releases/#{version}/GitHubDesktop-arm64.zip",
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
