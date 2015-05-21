cask :v1 => 'virtualbox-beta' do
  version '5.0.0_BETA4-100374'
  sha256 '5102194a9e5f14d0497998b58c95f8616fc45c54e2f753e80ebd668f90a51562'

  url "http://download.virtualbox.org/virtualbox/#{version.split('-')[0]}/VirtualBox-#{version}-OSX.dmg"
  homepage 'http://www.virtualbox.org'
  license :gpl

  pkg 'VirtualBox.pkg'
  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] }
end
