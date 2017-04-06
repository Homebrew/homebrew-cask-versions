cask 'virtualbox-beta' do
  if MacOS.version <= :lion
    version '4.3.32-103443'
    sha256 '08defbf310b7ba5852fa8dd951438bb9b1528bb1544211568861986110e807f7'
  else
    version '5.1.19-114236'
    sha256 '977e1af4911e81074ebe95cfe3bad4054431b2d5d66c344efd6905afbf2125de'
  end

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
