cask "zulu11" do
  version "11.0.10,11.45.27-ca"

  if Hardware::CPU.intel?
    sha256 "1c59885634ad438c9b198d31b9dd2aa310922484b3a0ffec603eec1b02eb898e"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  else
    sha256 "dd7f76d637fcf692081ae29af8f694d95e82cf30a9aa9ddea26d8e062c65e4f5"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_aarch64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  end

  name "Azul Zulu Java Standard Edition Development Kit"
  homepage "https://www.azul.com/downloads/zulu/zulu-mac/"

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
