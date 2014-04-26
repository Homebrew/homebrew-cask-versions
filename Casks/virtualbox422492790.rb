class Virtualbox422492790 < Cask
  url 'http://download.virtualbox.org/virtualbox/4.2.24/VirtualBox-4.2.24-92790-OSX.dmg'
  homepage 'http://www.virtualbox.org'
  version '4.2.24-92790'
  sha256 '46b422e62118a75519d24b7a0dd3a84081da3827734b25e1ee121eed5c0b6af9'
  install 'VirtualBox.pkg'
  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] }
end
