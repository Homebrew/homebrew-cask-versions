cask 'adium-beta' do
  version '1.5.11b3'
  sha256 '999e1931a52dc327b3a6e8492ffa9df724a837c88ad9637a501be2e3b6710078'

  # adiumx.cachefly.net was verified as official when first introduced to the cask
  url "https://adiumx.cachefly.net/Adium_#{version}.dmg"
  name 'Adium'
  homepage 'https://beta.adium.im/'

  app 'Adium.app'

  zap delete: [
                '~/Library/Caches/Adium',
                '~/Library/Caches/com.adiumX.adiumX',
                '~/Library/Preferences/com.adiumX.adiumX.plist',
              ]
end
