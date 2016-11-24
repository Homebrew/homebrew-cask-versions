cask 'royal-tsx-beta' do
  version '3.0.0.45'
  sha256 'dae509c90a107b040296bd2fcc821ffb2f3da82395169b047af291652d7f9e7c'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '1964ce38fcec89a2a8f708c1f0a9ace3e854aaf184d9893633fa66c807d0ce69'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
