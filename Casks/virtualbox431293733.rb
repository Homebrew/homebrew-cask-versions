cask :v1 => 'virtualbox431293733' do
  version '4.3.12-93733'
  sha256 'a9d9e3b3217177bc175839747de663ba25886f71e97a9c35ad802f618f11e23e'

  url "http://download.virtualbox.org/virtualbox/#{version.split('-')[0]}/VirtualBox-#{version}-OSX.dmg"
  homepage 'http://www.virtualbox.org'
  license :unknown

  pkg 'VirtualBox.pkg'
  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] }
end
