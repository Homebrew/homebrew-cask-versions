cask 'royal-tsx-beta' do
  version '3.2.9.2'
  sha256 '0ebd33092cecdb547aef0b3c92d7cbca3e480ef0b135e9a4df245c97ba1a3995'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'f44e417d5a14ee2c8491a22f554c3c4fc261db8df02b201142273bc70a1329ca'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
