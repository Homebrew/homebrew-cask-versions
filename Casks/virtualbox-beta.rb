cask 'virtualbox-beta' do
  if MacOS.version <= :lion
    version '4.3.32-103443'
    sha256 '08defbf310b7ba5852fa8dd951438bb9b1528bb1544211568861986110e807f7'
  else
    version '5.1.9,111660'
    sha256 '4cd819f9dfcdbe3dfe1b02299af42f940e2ad91d2423880a31ece0d760e1441f'
  end

  url "http://www.virtualbox.org/download/testcase/VirtualBox-#{version.before_comma}-#{version.after_comma}-OSX.dmg"
  name 'Oracle VirtualBox'
  homepage 'https://www.virtualbox.org/wiki/Testbuilds'

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
