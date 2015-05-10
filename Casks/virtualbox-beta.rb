cask :v1 => 'virtualbox-beta' do
  version '5.0.0_BETA3-100143'
  sha256 '98df952b5b7102ce670502a6f1b95b1a78dcf44faf2c69a8970dc6da46f3ea50'

  url "http://download.virtualbox.org/virtualbox/#{version.split('-')[0]}/VirtualBox-#{version}-OSX.dmg"
  homepage 'http://www.virtualbox.org'
  license :gpl

  pkg 'VirtualBox.pkg'
  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] }
end
