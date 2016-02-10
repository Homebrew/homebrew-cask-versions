cask 'osxfuse-beta' do
  version '3.1.0'
  sha256 '903128f6ff873e2c00c742e1ec0cac6b21a5cfac27d56ed092b27e34bf1bb007'

  # github.com/osxfuse/osxfuse was verified as official when first introduced to the cask
  url "https://github.com/osxfuse/osxfuse/releases/download/osxfuse-#{version}/osxfuse-#{version}.dmg"
  appcast 'https://github.com/osxfuse/osxfuse/releases.atom',
          checkpoint: 'ecf9044aa5e1c243bc85678e025b5a925b9a44ee44019eaf6c9385d6193708f0'
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
