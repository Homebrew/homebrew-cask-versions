cask 'dmm-player-for-chrome' do
  version '1_5_0_9'
  sha256 '01773a09ae8d049bbd70a2d9753f16f5795b77621ad61b46f09e0e08b99207a0'

  url "http://portalapp.dmm.com/silverlightplayer/dmm/m/#{version}/DMMPlayerForChromeInstaller_#{version}.pkg"
  name 'DMM Player for Chrome'
  homepage 'http://www.dmm.co.jp/digital/'
  license :commercial # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "DMMPlayerForChromeInstaller_#{version}.pkg"

  uninstall pkgutil: 'com.apple.ScriptEditor.id.DMMPlayerForChrome*'
end
