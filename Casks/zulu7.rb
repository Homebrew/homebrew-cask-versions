cask "zulu7" do
  version "7.0.282,7.42.0.13-ca"
  sha256 "3cfe7d0323456be9bf7fc1ab3d8b66466f7748e093d99a93010d4f0ed6729ad6"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  name "Azul Zulu Java Standard Edition Development Kit"
  homepage "https://www.azul.com/downloads/zulu/zulu-mac/"

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
