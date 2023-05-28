cask "1password-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "8.10.7-36.BETA"
  sha256 arm:   "e92327b2f36cecfe96e69e2423a97b8382facc9e02328b4e900b415d8f67c9dd",
         intel: "5e94eeea408c9b788a38e35428cbe82a480e85113f5c4e7e58b1c7194096bf53"

  url "https://downloads.1password.com/mac/1Password-#{version}-#{arch}.zip"
  name "1Password"
  desc "Password manager"
  homepage "https://1password.com/"

  livecheck do
    url "https://app-updates.agilebits.com/product_history/OPM#{version.major}"
    regex(%r{href=.*?/1Password[._-]?v?(\d+(?:.\d+)*(?:[._-]BETA))[._-]?\$ARCH\.zip}i)
  end

  auto_updates true
  conflicts_with cask: [
    "1password",
    "1password-nightly",
  ]
  depends_on macos: ">= :high_sierra"

  app "1Password.app"

  zap trash: [
    "~/Library/Application Scripts/2BUA8C4S2C.com.1password.*",
    "~/Library/Application Support/1Password",
    "~/Library/Application Support/CrashReporter/1Password*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.1password.1password.sfl2",
    "~/Library/Containers/2BUA8C4S2C.com.1password.browser-helper",
    "~/Library/Containers/com.1password.1password",
    "~/Library/Group Containers/2BUA8C4S2C.com.1password",
    "~/Library/Saved Application State/com.1password.1password.savedState",
  ]
end
