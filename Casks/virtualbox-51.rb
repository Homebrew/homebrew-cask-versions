cask 'virtualbox-51' do
  version '5.1.30,118389'
  sha256 'bc1c6c341fcc04a8e214f9e4ced44058c6239f30ddd0e1a923f04c8d01c92d91'

  url "http://download.virtualbox.org/virtualbox/#{version.before_comma}/VirtualBox-#{version.before_comma}-#{version.after_comma}-OSX.dmg"
  name 'Oracle VirtualBox 5.1'
  homepage 'https://www.virtualbox.org/wiki/Download_Old_Builds_5_1'

  pkg 'VirtualBox.pkg'

  uninstall_preflight do
    if File.exist?("#{HOMEBREW_PREFIX}/Caskroom/virtualbox-extension-pack")
      system_command 'brew', args: ['cask', 'uninstall', 'virtualbox-extension-pack']
    end
  end

  uninstall script:  {
                       executable: 'VirtualBox_Uninstall.tool',
                       args:       ['--unattended'],
                       sudo:       true,
                     },
            pkgutil: 'org.virtualbox.pkg.*'
end
