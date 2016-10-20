cask 'osxfuse-beta' do
  version '3.5.3'
  sha256 '9d48cbfe360bead9e9fd31bc95e18a90f03be7c4be5b5c62acd7df98c8c0c80b'

  # github.com/osxfuse/osxfuse was verified as official when first introduced to the cask
  url "https://github.com/osxfuse/osxfuse/releases/download/osxfuse-#{version}/osxfuse-#{version}.dmg"
  appcast 'https://github.com/osxfuse/osxfuse/releases.atom',
          checkpoint: '10e99a2fd180976d11ac1d3f730bf7415438cf29138e0e7c3fa110f0b569145e'
  name 'OSXFUSE'
  homepage 'https://osxfuse.github.io/'

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
