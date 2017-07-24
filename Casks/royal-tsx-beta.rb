cask 'royal-tsx-beta' do
  version '3.2.1.8'
  sha256 '17aeb91413cddb4e362f34d54b4fe0f70ba4280d00029410a61ec6641f683b49'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'c45d63eb2011f68d7d11162c28617ac17d123c794da694a659d77cddcabd1850'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
