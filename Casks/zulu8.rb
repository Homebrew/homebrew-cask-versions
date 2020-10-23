cask "zulu8" do
  version "8.0.272,8.50.0.21-ca"
  sha256 "170ee277da3dcfccc8a62a1664b42bdb2572ff05ecc415981b9b9f09d2f06292"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  name "Azul Zulu Java 8 Standard Edition Development Kit"
  homepage "https://www.azul.com/downloads/zulu/zulu-mac/"

  depends_on macos: ">= :yosemite"

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
