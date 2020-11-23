cask "zulu7" do
  version "7.0.285,7.42.0.51-ca"
  sha256 "d93ad975f0014283408bb057eb1d8c544be35fb7b924d9f8ec8169c96eb83612"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  name "Azul Zulu Java Standard Edition Development Kit"
  homepage "https://www.azul.com/downloads/zulu/zulu-mac/"

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
