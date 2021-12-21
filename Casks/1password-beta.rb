cask "1password-beta" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "8.5.0-57.BETA"

  if Hardware::CPU.intel?
    sha256 "eb6ba37f3e136b73d468729747bec6e3ec3a9fe56aa8f31c826ec4be2f91a85c"
  else
    sha256 "78ef2035cf417a25bd08169c594453f3b46bf155d63e4d52edd6373182e4a1d4"
  end

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
    "~/Library/Application Scripts/2BUA8C4S2C.com.1password.browser-helper",
    "~/Library/Application Scripts/2BUA8C4S2C.com.1password.1password",
    "~/Library/Containers/2BUA8C4S2C.com.1password.browser-helper",
    "~/Library/Containers/com.1password.1password",
    "~/Library/Group Containers/2BUA8C4S2C.com.1password",
  ]
end
