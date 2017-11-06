cask 'royal-tsx-beta' do
  version '3.2.2.1000'
  sha256 'c293223736309c7262a9a75ab07935e189161946246450fd10660ce417baf42a'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'efe84eee7da8b989b9099ce954048dc0aaeb63ee81507f744c43f61f7b6495f0'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
