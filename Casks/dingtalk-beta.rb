cask 'dingtalk-beta' do
  version '4.2.39'
  sha256 'ff6924f7c02bed4a1d6787640f1ff5f5e724a95f4e6ae1312fb4e8790d120554'

  # download.alicdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "https://download.alicdn.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  homepage 'https://www.dingtalk.com/'

  conflicts_with cask: 'dingtalk'

  app 'DingTalk.app'

  zap trash: [
               '~/Library/Application Support/DingTalk',
               '~/Library/Caches/DingTalk',
               '~/Library/Preferences/com.dingtalk.mac.plist',
               '~/Library/Saved Application State/com.dingtalk.mac.savedState',
             ]
end
