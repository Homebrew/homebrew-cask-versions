cask "zulu13" do
  if Hardware::CPU.intel?
    version "13.0.6,13.37.21-ca"
    sha256 "c9de14e85b882fdcb65deef263ea43cfb8c3eb603b7f5a7c51214c7e4e16674b"

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
