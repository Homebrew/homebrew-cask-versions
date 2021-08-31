cask "1password-beta" do
  version "8.2.2-19.BETA"

  if Hardware::CPU.intel?
    sha256 "493682cfe18c9c6bb6801a4100a14f698a9d76161fe606943e561f56e6a2bce3"
    url "https://downloads.1password.com/mac/1Password-#{version}-x86_64.zip"
  else
    sha256 "18caa2e473da0f6e7b2ed9a34175554db28caeeb14cf9301b9432d279f0ba685"
    url "https://downloads.1password.com/mac/1Password-#{version}-aarch64.zip"
  end

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
