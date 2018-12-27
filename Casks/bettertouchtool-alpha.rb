cask 'bettertouchtool-alpha' do
  version '2.674'
  sha256 '63b8cc11a97576802b4d166e901db5d8bb0c8df54aa33d94693139ca677d0c31'

  # bettertouchtool.net/releases was verified as official when first introduced to the cask
  url "https://bettertouchtool.net/releases/btt#{version}_alpha.zip"
  appcast 'https://bettertouchtool.net/releases/'
  name 'BetterTouchTool'
  homepage 'https://folivora.ai/'

  auto_updates true

  app 'BetterTouchTool.app'

  uninstall login_item: 'BetterTouchTool'

  zap trash: [
               '~/Library/Preferences/com.hegenberg.BetterTouchTool.plist',
               '~/Library/Application Support/BetterTouchTool',
             ]
end
