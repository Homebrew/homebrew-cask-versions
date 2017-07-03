cask 'virtualbox-beta' do
  version '5.1.23-116627'
  sha256 'c88e2969461eff199947bda055965d2e05c802d2afd3beec32d05da800ced3f0'

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
                       sudo:       true,
                     },
            pkgutil: 'org.virtualbox.pkg.*'

  zap delete: [
                '/Library/Application Support/VirtualBox',
                '~/Library/VirtualBox',
              ],
      rmdir:  '~/VirtualBox VMs'
end
