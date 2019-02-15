cask 'zulu9' do
  version '9.0.7.1'
  sha256 'ddc362256ce2a06a37993cbe1ae2c166191444c23875d10c38bef910d5b5e6ac'

  url "https://cdn.azul.com/zulu/bin/zulu#{version}-jdk#{version.major_minor_patch}-macosx_x64.dmg",
      referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java Standard Edition Development Kit'
  homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}",
            rmdir:   '/Library/Java/JavaVirtualMachines'
end
