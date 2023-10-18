cask "1password6" do
  version "6.8.9"
  sha256 "d7cc24dc354f27441929350b9e6e2e4a710d6ed0bdab06f0e9be07160fe04200"

  url "https://c.1password.com/dist/1P/mac4/1Password-#{version}.zip"
  name "1Password"
  desc "Password manager that keeps all passwords secure behind one password"
  homepage "https://1password.com/"

  livecheck do
    url "https://app-updates.agilebits.com/product_history/OPM4"
    regex(%r{href=.*?/1Password-(\d+(?:\.\d+)+)\.pkg}i)
  end

  auto_updates true

  app "1Password #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword-osx-helper",
    "~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper",
    "~/Library/Containers/com.agilebits.onepassword-osx",
    "~/Library/Group Containers/2BUA8C4S2C.com.agilebits",
  ]

  caveats do
    discontinued
  end
end
