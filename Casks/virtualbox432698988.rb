cask :v1 => 'virtualbox432698988' do
  version '4.3.26-98988'
  sha256 '3efddddbed7648d5bdfe11a7a341591d05135cda7298792d93334a5faa83d124'

  url "http://download.virtualbox.org/virtualbox/#{version.split('-')[0]}/VirtualBox-#{version}-OSX.dmg"
  homepage 'http://www.virtualbox.org'
  license :unknown

  pkg 'VirtualBox.pkg'
  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] }
end
