cask "zulu8" do
  if Hardware::CPU.intel?
    version "8.0.282,8.52.0.23-ca"
    sha256 "4eaf47acd097ad3102f55ddc586f4e1fbb3b8b8115d5cb2c455a54b0d84ee1bc"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  else
    version "8.0.275,8.50.0.1017-ca"
    sha256 "80f1e48d017896e05b5722a3de19f799e5cb9854ec5a1883d0e7a9a9ed4e7b23"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macos_aarch64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  end

  name "Azul Zulu Java 8 Standard Edition Development Kit"
  homepage "https://www.azul.com/downloads/zulu/zulu-mac/"

  depends_on macos: ">= :yosemite"

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
