cask "1password-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "8.10.1-1.BETA"
  sha256 arm:   "807b0b5530a8bf776b6315c21806e325089e2c1116b480ab018a9da7425c76af",
         intel: "cbaa993b2f348e03d7a8abac3e0fa7186cdea6bc1c65486ee54ab16bf24e7cf9"

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
