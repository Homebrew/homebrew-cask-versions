cask "1password-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "8.10.18-10.BETA"
  sha256 arm:   "17c8f1e4f852017be122debc04726dbb6df39d371f5dc2277745d16ff06e3f3e",
         intel: "2dda77b606e1bcd7de50fe4fe84d79f2fc5928db145d1f03518ee39516d7063e"

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
  depends_on macos: ">= :catalina"

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
