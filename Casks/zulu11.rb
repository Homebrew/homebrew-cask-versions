cask "zulu11" do
  version "11.0.9,11.43.21-ca"
  sha256 "bac5270ed1cd3c02fcf3b30cb4c0124b7a66966ac2d2cf50bdcb7909e43e884d"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  name "Azul Zulu Java Standard Edition Development Kit"
  homepage "https://www.azul.com/downloads/zulu/zulu-mac/"

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
