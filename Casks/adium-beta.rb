cask 'adium-beta' do
  version '1.5.10.3b1'
  sha256 '6c1c7b58e23bf4b1e024eb7c5592eaa5b4d6b2ea33e0fb75e32aa0b0c4672085'

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
