cask 'osxfuse-beta' do
  version '3.0.9'
  sha256 '0065c58a352e014885ca472fdbe3ac703061d1fb32e4c682c7eb9a019ddf84c0'

  url "https://github.com/osxfuse/osxfuse/releases/download/osxfuse-#{version}/osxfuse-#{version}.dmg"
  appcast 'https://github.com/atom/electron/releases.atom',
          :checkpoint => '6a2e04eaf5fc1471e119b84f89215e3b8af98a51a47ab264ff5ec0098fc7b965'
  name 'OSXFUSE'
  homepage 'https://osxfuse.github.io/'
  license :bsd

  pkg "Extras/FUSE for OS X #{version}.pkg"

  postflight do
    set_ownership ['/usr/local/include', '/usr/local/lib']
  end

  uninstall :pkgutil => 'com.github.osxfuse.pkg.Core|com.github.osxfuse.pkg.PrefPane',
            :kext    => 'com.github.osxfuse.filesystems.osxfusefs'

  caveats do
    reboot
  end
end
