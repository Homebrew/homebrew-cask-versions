cask 'zulu11' do
  version '11.0.2,11.29.11-ca'
  sha256 '712e97c0dc96e86a08a325666132715561b5a11ce8c17a39fadba28c31c8429c'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
      referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java Standard Edition Development Kit'
  homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

  depends_on macos: '>= :sierra'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}",
            rmdir:   '/Library/Java/JavaVirtualMachines'
end
