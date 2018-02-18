cask 'royal-tsx-beta' do
  version '3.2.8.1'
  sha256 '2ea72768e1e71c390fc79a462319daf1e6cf0ffb9e4e9ef0611bf6a034695dc5'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '5ecd85238f87aaaff1603fa223e87e58e277ea1dcff530326c5cf65e2a9d2a2d'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
