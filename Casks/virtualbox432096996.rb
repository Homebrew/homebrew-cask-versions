cask :v1 => 'virtualbox432096996' do
  version '4.3.20-96996'
  sha256 '744e77119a640a5974160213c9912568a3d88dbd06a2fc6b6970070941732705'

  url "http://download.virtualbox.org/virtualbox/4.3.20/VirtualBox-#{version}-OSX.dmg"
  homepage 'http://www.virtualbox.org'
  license :unknown

  pkg 'VirtualBox.pkg'
  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] }
end
