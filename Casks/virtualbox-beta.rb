cask 'virtualbox-beta' do
  version '5.0.21-107302'
  sha256 'f670826547df8357d3c9098985ac620d5aa8959b85d0d888543f0404f3247663'

  url "http://download.virtualbox.org/virtualbox/#{version.split('-')[0]}/VirtualBox-#{version}-OSX.dmg"
  name 'Oracle VirtualBox'
  homepage 'https://www.virtualbox.org/wiki/Testbuilds'
  license :gpl

  pkg 'VirtualBox.pkg'
  binary '/Applications/VirtualBox.app/Contents/MacOS/VBoxManage'
  binary '/Applications/VirtualBox.app/Contents/MacOS/VBoxHeadless'

  uninstall script:  { executable: 'VirtualBox_Uninstall.tool', args: %w[--unattended] },
            pkgutil: 'org.virtualbox.pkg.*'
end
