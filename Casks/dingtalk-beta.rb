cask 'dingtalk-beta' do
  version '4.3.0'
  sha256 '987cd5866e21d7525ae958e0cb282c05e2eb1812a205e86aa034a0c0775c787e'

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
