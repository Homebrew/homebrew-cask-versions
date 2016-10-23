cask 'adium-nightly16' do
  version '1.6hgr5946'
  sha256 'aa5f92647a256fff0b5098679bd4966db039769a0e8a094116fd06b0cb3dcfc2'

  url "http://nightly.adium.im/adium-adium-1.6/Adium_#{version}.dmg"
  name 'Adium'
  homepage 'http://nightly.adium.im/?repo_branch=adium-adium-1.6'

  app 'Adium.app'

  zap delete: [
                '~/Library/Caches/Adium',
                '~/Library/Caches/com.adiumX.adiumX',
                '~/Library/Preferences/com.adiumX.adiumX.plist',
              ]
end
