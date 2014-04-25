class CamtwistBeta < Cask
  url 'http://camtwiststudio.com/beta/CamTwist_3.0.dmg'
  homepage 'http://camtwiststudio.com/'
  version '3.0beta'
  no_checksum
  install 'CamTwist.pkg'
  uninstall :script => { :executable => 'Manual Install/CamTwist/uninstall.command' }
end
