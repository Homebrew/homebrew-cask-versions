cask 'royal-tsx-beta' do
  version '3.2.1.9'
  sha256 '0a238b5c6a8db3e55c76daec4bc9ef95ed4c3f88ab23d3e42f960952832aa0b3'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '4ea7f5d565e90207b623309a41bc62a47a3863fdc134d5a1567b5080610daf6b'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
