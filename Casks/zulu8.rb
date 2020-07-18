cask 'zulu8' do
  version '8.0.262,8.48.0.49-ca'
  sha256 '207af2863204d1d4856c54e4f3a8e046a54fe66958a06bc46a44d01e641f80b6'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
      referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java 8 Standard Edition Development Kit'
  homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

  depends_on macos: '>= :yosemite'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
