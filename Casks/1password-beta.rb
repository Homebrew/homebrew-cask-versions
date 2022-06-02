cask "1password-beta" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "8.8.0-119.BETA"

  if Hardware::CPU.intel?
    sha256 "90cac1d9239b7f03a885cea28d836aa17441c253d462df09bb691dd5c31b74a8"
  else
    sha256 "54820e5d6ec2fedc83f7383a8fb24dd5024d09ff4301745c01e6bf32784a04fa"
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
