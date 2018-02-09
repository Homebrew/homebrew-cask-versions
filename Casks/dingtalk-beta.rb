cask 'dingtalk-beta' do
  version '4.2.60'
  sha256 '0b3174e5e619e9ebc6f945ffce58463e8594eddfc061e364a25318c6b5aa8233'

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
