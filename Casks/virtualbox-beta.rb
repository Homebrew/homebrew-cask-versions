cask 'virtualbox-beta' do
  version '5.1.23-116680'
  sha256 '45b36c29b6fe5ab04078e1325e4cbcb0f25358d048b311ee4b9ec2fac3d279a6'

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
                       args:       ['--unattended'],
                       sudo:       true,
                     },
            pkgutil: 'org.virtualbox.pkg.*'

  zap delete: [
                '/Library/Application Support/VirtualBox',
                '~/Library/VirtualBox',
              ],
      rmdir:  '~/VirtualBox VMs'
end
