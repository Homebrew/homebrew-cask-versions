cask 'osxfuse-beta' do
  version '3.3.3'
  sha256 '39b753e98c1d44c0f616a52a782985c1dfcff61c207eadbeb98cced177943927'

  # github.com/osxfuse/osxfuse was verified as official when first introduced to the cask
  url "https://github.com/osxfuse/osxfuse/releases/download/osxfuse-#{version}/osxfuse-#{version}.dmg"
  appcast 'https://github.com/osxfuse/osxfuse/releases.atom',
          checkpoint: '421d5bcd5fde0a27c6a725bb207ea231c18240836a76d33971fec51f08ed3174'
  name 'OSXFUSE'
  homepage 'https://osxfuse.github.io/'
  license :bsd

  pkg "Extras/FUSE for OS X #{version}.pkg"

  postflight do
    set_ownership ['/usr/local/include', '/usr/local/lib']
  end

  uninstall pkgutil: 'com.github.osxfuse.pkg.Core|com.github.osxfuse.pkg.PrefPane',
            kext:    'com.github.osxfuse.filesystems.osxfusefs'

  caveats do
    reboot
  end
end
