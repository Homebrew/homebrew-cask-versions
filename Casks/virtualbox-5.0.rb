cask 'virtualbox-5.0' do
  if MacOS.release <= :lion
    version '4.3.32-103443'
    sha256 '08defbf310b7ba5852fa8dd951438bb9b1528bb1544211568861986110e807f7'
  else
    version '5.0.22,1081085'
    sha256 '05acd9588bf24441ce6573df36547ba943b22651c73879d8e90603f457d4782e'
  end

  url "http://download.virtualbox.org/virtualbox/#{version.before_comma}/VirtualBox-#{version.before_comma}-#{version.after_comma}-OSX.dmg"
  name 'Oracle VirtualBox'
  homepage 'https://www.virtualbox.org/wiki/Download_Old_Builds_5_0'
  license :gpl

  auto_updates false

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
