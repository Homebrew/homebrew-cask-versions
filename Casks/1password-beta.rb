cask "1password-beta" do
  version "7.7.1.BETA-8"
  sha256 "9b88c81c33f08cb771b3c157fe2be42e3c8e0f80acfc74801cfd04277cc3f55f"

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
