cask :v1 => 'virtualbox4330101610' do
  version '4.3.30-101610'
  sha256 '1616b058f232683e74ecd85ed60aebf3c27901893b371596e66e9080a1493ccb'

  url "http://download.virtualbox.org/virtualbox/#{version.split('-')[0]}/VirtualBox-#{version}-OSX.dmg"
  homepage 'http://www.virtualbox.org'
  license :unknown

  pkg 'VirtualBox.pkg'
  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] }
end
