cask 'virtualbox-beta' do
  version '5.2.0_BETA2,117563'
  sha256 '9dd52a69134df7937da96d834ab92d9532393a33438257c176fc66bbb899c614'

  url "http://download.virtualbox.org/virtualbox/#{version.before_comma}/VirtualBox-#{version.before_comma}-#{version.after_comma}-OSX.dmg"
  appcast 'http://download.virtualbox.org/virtualbox/LATEST-BETA.TXT',
          checkpoint: '4e9ae5d62ebfe2ab6e9fc1d7bd64c69f0c25b601b1c08ba92711adda7c6c0049'
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
