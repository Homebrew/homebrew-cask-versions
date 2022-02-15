cask "1password-beta" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "8.6.0-26.BETA"

  if Hardware::CPU.intel?
    sha256 "5fe655a16b4f12f2c3b0f47f792c1d6d419db51cffdd469e1d994830d673f044"
  else
    sha256 "ccd27582e510ca4c99e818c50e9183d61478a52e2a6329bfedce4e36a87899ae"
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
