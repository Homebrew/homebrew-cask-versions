cask "1password-beta" do
  version "8.4.0-2.BETA"

  if Hardware::CPU.intel?
    sha256 "131e544d6d535419109206b04f52466a028c3969ae0f6dc90e8b6488c757e2e2"
    url "https://downloads.1password.com/mac/1Password-#{version}-x86_64.zip"
  else
    sha256 "f866d47be49bb1ff0c036e7f31eb5988fdffeb72a48e650289a812a48b188b2d"
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
