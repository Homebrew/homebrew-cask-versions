cask "1password-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "8.10.1-19.BETA"
  sha256 arm:   "240d94fcf7d6dbea873e3a881902f981621daad7791b594bdfe85e71887695c1",
         intel: "759d55bf8a28703625c36b226e7a2453200a719d96ef32a87d35f610b6a68a52"

  url "https://downloads.1password.com/mac/1Password-#{version}-#{arch}.zip"
  name "1Password"
  desc "Password manager that keeps all passwords secure behind one password"
  homepage "https://1password.com/"

  livecheck do
    url "https://app-updates.agilebits.com/product_history/OPM#{version.major}"
    regex(%r{href=.*?/1Password[._-]?v?(\d+(?:.\d+)*(?:[._-]BETA))[._-]?\$ARCH\.zip}i)
  end

  auto_updates true
  conflicts_with cask: "1password"
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
