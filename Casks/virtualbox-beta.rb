cask 'virtualbox-beta' do
  version '5.0.19-106880'
  sha256 '2034fd770931e48d15e121fbd814660b439f605816f8f9cf01e16a66c7eaab90'

  url "http://download.virtualbox.org/virtualbox/#{version.split('-')[0]}/VirtualBox-#{version}-OSX.dmg"
  name 'Oracle VirtualBox'
  homepage 'https://www.virtualbox.org/wiki/Testbuilds'
  license :gpl

  pkg 'VirtualBox.pkg'
  binary '/Applications/VirtualBox.app/Contents/MacOS/VBoxManage'
  binary '/Applications/VirtualBox.app/Contents/MacOS/VBoxHeadless'

  uninstall script:  { executable: 'VirtualBox_Uninstall.tool', args: %w[--unattended] },
            pkgutil: 'org.virtualbox.pkg.*'
end
