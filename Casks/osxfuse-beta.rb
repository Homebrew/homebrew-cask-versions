cask 'osxfuse-beta' do
  version '3.4.1'
  sha256 '685101c6529d8bbf2fa39e83c141b20b3400f7ee0c16ad5dcecb0d80ef700b51'

  # github.com/osxfuse/osxfuse was verified as official when first introduced to the cask
  url "https://github.com/osxfuse/osxfuse/releases/download/osxfuse-#{version}/osxfuse-#{version}.dmg"
  appcast 'https://github.com/osxfuse/osxfuse/releases.atom',
          checkpoint: '1e7fd18731cef848a78ce821bdd285eb3fbab6d328f46206aa26ef087a083312'
  name 'OSXFUSE'
  homepage 'https://osxfuse.github.io/'
  license :bsd

  pkg "Extras/FUSE for macOS #{version}.pkg"

  postflight do
    set_ownership ['/usr/local/include', '/usr/local/lib']
  end

  uninstall pkgutil: 'com.github.osxfuse.pkg.Core|com.github.osxfuse.pkg.PrefPane',
            kext:    'com.github.osxfuse.filesystems.osxfusefs'

  caveats do
    reboot
  end
end
