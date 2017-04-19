cask 'virtualbox-beta' do
  version '5.1.21-114652'
  sha256 '508c260334c20e31c27de5a04e2a60b5523deb96ce927cda797dd93872641d5f'

  url "https://www.virtualbox.org/download/testcase/VirtualBox-#{version}-OSX.dmg"
  name 'Oracle VirtualBox'
  homepage 'https://www.virtualbox.org/wiki/Testbuilds'

  auto_updates true

  pkg 'VirtualBox.pkg'

  uninstall script:  {
                       executable: 'VirtualBox_Uninstall.tool',
                       args:       %w[--unattended],
                     },
            pkgutil: 'org.virtualbox.pkg.*'

  zap delete: [
                '/Library/Application Support/VirtualBox',
                '~/Library/VirtualBox',
              ],
      rmdir:  '~/VirtualBox VMs'
end
