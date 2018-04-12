cask 'royal-tsx-beta' do
  version '3.2.9.1'
  sha256 'a200605116f13d815b5859717155390e08e4d251b1cc8207f37534d944fc5da4'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '0f1befb2990a48b365d4164f39ae15ec6de5dc7f0c65b8f8203412666d5d1f30'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
