cask :v1 => 'virtualbox422492790' do
  version '4.2.24-92790'
  sha256 '46b422e62118a75519d24b7a0dd3a84081da3827734b25e1ee121eed5c0b6af9'

  url "http://download.virtualbox.org/virtualbox/#{version.split('-')[0]}/VirtualBox-#{version}-OSX.dmg"
  homepage 'http://www.virtualbox.org'
  license :unknown

  pkg 'VirtualBox.pkg'
  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] }
end
