cask "1password-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "8.10.8-13.BETA"
  sha256 arm:   "33532749b67aaac4fb29ee5ef3fe29a42c655de92e9499e6f596f9fb8b6df158",
         intel: "36984781e32b8c1a80a54e5cacd8f524e4d35c3e245e83b4ebb7de56cfd8c6e0"

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
