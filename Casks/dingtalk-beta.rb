cask 'dingtalk-beta' do
  version '4.2.31'
  sha256 '001e92035922e33e19a773ea7101f491fea9634356aa241104dcf722cf6239f3'

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
