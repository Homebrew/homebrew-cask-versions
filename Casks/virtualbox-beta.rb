cask 'virtualbox-beta' do
  if MacOS.release <= :lion
    version '4.3.32-103443'
    sha256 '08defbf310b7ba5852fa8dd951438bb9b1528bb1544211568861986110e807f7'
  else
    version '5.1.0_BETA1,107766'
    sha256 '53115e26301ded36758cd7a4f328ed800aae88884e493bd3049a94ef627a45ec'
  end

  url "http://download.virtualbox.org/virtualbox/#{version.before_comma}/VirtualBox-#{version.before_comma}-#{version.after_comma}-OSX.dmg"
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
