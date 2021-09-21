cask "1password-beta" do
  version "8.2.2-57.BETA"

  if Hardware::CPU.intel?
    sha256 "7d6eac06282f29e16f51402b9b44add8441b0774e6edcf66bed52d0f5ab915ec"
    url "https://downloads.1password.com/mac/1Password-#{version}-x86_64.zip"
  else
    sha256 "decdb7964c95c8bd6b4bcf11fe85f049ba594ab53f414128d51508ef132e7529"
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
