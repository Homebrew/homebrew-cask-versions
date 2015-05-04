cask :v1 => 'virtualbox-beta' do
  version '5.0.0_BETA2-99639'
  sha256 '3ed03339ba395900ef01824c86e14657a4e5d4aec1c630172e7541b6c585d49a'

  url "http://download.virtualbox.org/virtualbox/5.0.0_BETA2/VirtualBox-#{version}-OSX.dmg"
  homepage 'http://www.virtualbox.org'
  license :unknown

  pkg 'VirtualBox.pkg'
  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] }
end
