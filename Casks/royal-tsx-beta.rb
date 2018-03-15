cask 'royal-tsx-beta' do
  version '3.2.8.5'
  sha256 'eb6f04fd5e68f0b53a8510e9864b69bc31fe4b5044432841f274d0327f1c5ef4'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'e3f651ea5b310047226d128978bb54ad915e2d466b5ba8d94b31335aa274ed3f'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
