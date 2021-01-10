cask "zulu13" do
  if Hardware::CPU.intel?
    version "13.0.5,13.35.17-ca"
    sha256 "ce0b48f881bcb1d347b1e98a731aea34b843c2e5c9a38a93b14b364a0b10d36c"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  else
    version "13.0.5.1,13.35.1017-ca"
    sha256 "c930f8475daa9878e627521d21dd7eea541759affde1763bbbb13017c52f4115"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macos_aarch64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  end

  name "Azul Zulu Java Standard Edition Development Kit"
  homepage "https://www.azul.com/downloads/zulu/zulu-mac/"

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
