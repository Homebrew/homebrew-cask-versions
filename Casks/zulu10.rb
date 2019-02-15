cask 'zulu10' do
  version '10.3,5:10.0.2'
  sha256 'dfc5a9cae3fbfb45d565bcd067829b7273704c976ff00a63794c9f9742fe4f76'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}+#{version.after_comma.before_colon}-jdk#{version.after_colon}-macosx_x64.dmg",
      referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java Standard Edition Development Kit'
  homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
