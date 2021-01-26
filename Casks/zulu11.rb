cask "zulu11" do
  if Hardware::CPU.intel?
    version "11.0.10,11.45.27-ca"
    sha256 "1c59885634ad438c9b198d31b9dd2aa310922484b3a0ffec603eec1b02eb898e"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  else
    version "11.0.9.1,11.43.1021-ca"
    sha256 "260a9d1bd3acda5b82bd3d61096fb3eec9985e5c37817ee2d3bb21f1134f0b36"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_aarch64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  end

  name "Azul Zulu Java Standard Edition Development Kit"
  homepage "https://www.azul.com/downloads/zulu/zulu-mac/"

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
