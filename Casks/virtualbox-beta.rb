cask :v1 => 'virtualbox-beta' do
  version '5.0.0_RC1-100731'
  sha256 '9cd0923966b83a0447b1bc4ea397971f3b1908ec974bb517637cf1e3a975573b'

  url "http://download.virtualbox.org/virtualbox/#{version.split('-')[0]}/VirtualBox-#{version}-OSX.dmg"
  homepage 'http://www.virtualbox.org'
  license :gpl

  pkg 'VirtualBox.pkg'
  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] }
end
