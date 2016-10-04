cask 'virtualbox-beta' do
  if MacOS.version <= :lion
    version '4.3.32-103443'
    sha256 '08defbf310b7ba5852fa8dd951438bb9b1528bb1544211568861986110e807f7'
  else
    version '5.1.7,111038'
    sha256 '8c018c9af1656abf5c2c868c8010734c9d3e48e868cd85190089e35fb4e5ca37'
  end

  url "http://www.virtualbox.org/download/testcase/VirtualBox-#{version.before_comma}-#{version.after_comma}-OSX.dmg"
  name 'Oracle VirtualBox'
  homepage 'https://www.virtualbox.org/wiki/Testbuilds'
  license :gpl

  auto_updates true

  pkg 'VirtualBox.pkg'
  binary '/Applications/VirtualBox.app/Contents/MacOS/VBoxManage'
  binary '/Applications/VirtualBox.app/Contents/MacOS/VBoxHeadless'

  uninstall script:  { executable: 'VirtualBox_Uninstall.tool', args: %w[--unattended] },
            pkgutil: 'org.virtualbox.pkg.*'

  zap delete: [
                '/Library/Application Support/VirtualBox',
                '~/Library/VirtualBox',
              ],
      rmdir:  '~/VirtualBox VMs'
end
