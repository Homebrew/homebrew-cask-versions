cask 'virtualbox-beta' do
  version '5.1.23-115901'
  sha256 'e72b0ff3c0dbf88edc1f83273d5f7a75a25a95904c93607f2c9f2ce8ac27c18d'

  url "https://www.virtualbox.org/download/testcase/VirtualBox-#{version}-OSX.dmg"
  name 'Oracle VirtualBox'
  homepage 'https://www.virtualbox.org/wiki/Testbuilds'

  auto_updates true

  pkg 'VirtualBox.pkg'

  uninstall_preflight do
    if File.exist?("#{HOMEBREW_PREFIX}/Caskroom/virtualbox-extension-pack-beta")
      system_command 'brew', args: ['cask', 'uninstall', 'virtualbox-extension-pack-beta']
    end
  end

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
