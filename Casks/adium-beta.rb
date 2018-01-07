cask 'adium-beta' do
  version '1.5.10.4'
  sha256 '31fa3fd32b86dd3381b60e0d5aafbc2a9452036f0fb4963bffbc2a6c64a9458b'

  url "http://download.adium.im/Adium_#{version}.dmg"
  name 'Adium'
  homepage 'https://beta.adium.im/'

  auto_updates true
  conflicts_with cask: 'adium'

  app 'Adium.app'

  zap trash: [
               '~/Library/Caches/Adium',
               '~/Library/Caches/com.adiumX.adiumX',
               '~/Library/Preferences/com.adiumX.adiumX.plist',
             ]
end
