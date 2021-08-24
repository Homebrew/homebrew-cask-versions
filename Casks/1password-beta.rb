cask "1password-beta" do
  version "8.2.2-6.BETA"

  if Hardware::CPU.intel?
    sha256 "8a8ba64fa36e92b81771ab7a57b0de70ace0d1bfd7b5ad6b1456b2b00333c573"
    url "https://downloads.1password.com/mac/1Password-#{version}-x86_64.zip"
  else
    sha256 "f460ed94d670eb6904b51c9bbe6b482224abde116df8a057ec0d2382ebf2b65a"
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
