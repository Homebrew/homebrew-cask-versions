cask 'adium-beta' do
  version '1.5.11b2'
  sha256 'e7690718f14defa3bc08cd3949a4eab52e942abd47f7ac2ce7157ed7295658c6'

  url "https://adiumx.cachefly.net/Adium_#{version}.dmg"
  name 'Adium'
  homepage 'https://beta.adium.im/'
  license :gpl

  app 'Adium.app'

  zap :delete => [
                   '~/Library/Caches/Adium',
                   '~/Library/Caches/com.adiumX.adiumX',
                   '~/Library/Preferences/com.adiumX.adiumX.plist',
                 ]
end
