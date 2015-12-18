cask 'adium-nightly16' do
  version '1.6hgr5915'
  sha256 '70619777433df646a7251a10eb74baecdc5a47be085cd83d35f3750fcfea9e1b'

  url "http://nightly.adium.im/adium-adium-1.6/Adium_#{version}.dmg"
  name 'Adium'
  homepage 'http://nightly.adium.im/?repo_branch=adium-adium-1.6'
  license :gpl

  app 'Adium.app'

  zap :delete => [
                  '~/Library/Caches/Adium',
                  '~/Library/Caches/com.adiumX.adiumX',
                  '~/Library/Preferences/com.adiumX.adiumX.plist',
                 ]
end
