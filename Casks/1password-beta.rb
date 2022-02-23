cask "1password-beta" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "8.6.0-43.BETA"

  if Hardware::CPU.intel?
    sha256 "ad67af4203d92c605d145dd8c25241ba22b1d5e6c9f4a88968493dbd090f2710"
  else
    sha256 "1a6bd2f054d8f7578794d09ac3403cd668abd8718a94fda961e4ea1ac17e61c3"
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
