cask "1password-beta" do
  version "8.2.2-39.BETA"

  if Hardware::CPU.intel?
    sha256 "5fc5c5302d367cde3989dafd3920ad9248f04c197ae6dfb592a970e8f16a309d"
    url "https://downloads.1password.com/mac/1Password-#{version}-x86_64.zip"
  else
    sha256 "d39f7c0d7bf3218580f706f40d272c99b225c9851129d8c0708ab387f65a2102"
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
