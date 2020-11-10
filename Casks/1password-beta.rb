cask "1password-beta" do
  version "7.7.BETA-13"
  sha256 "8553177d4d0f13161208380a7fb6b6a7473d2fa45ded75cc2c8af225a1a7a813"

  url "https://c.1password.com/dist/1P/mac#{version.major}/1Password-#{version}.zip"
  appcast "https://app-updates.agilebits.com/product_history/OPM#{version.major}"
  name "1Password"
  desc "Password manager that keeps all passwords secure behind one password"
  homepage "https://1password.com/"

  auto_updates true
  conflicts_with cask: "1password"

  app "1Password #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword-osx-helper",
    "~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper",
    "~/Library/Containers/com.agilebits.onepassword-osx",
    "~/Library/Group Containers/2BUA8C4S2C.com.agilebits",
  ]
end
