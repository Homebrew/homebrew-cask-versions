cask 'royal-tsx-beta' do
  version '3.0.0.49'
  sha256 'c4fc0ee53e14879071cff7b5eb3f3de5b60a71c7f8a8359880dc3e2c6c11ccc2'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '674efe99c55c4837f17e6fa4e51183108b381f9861610961797a0ec386caff5e'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
