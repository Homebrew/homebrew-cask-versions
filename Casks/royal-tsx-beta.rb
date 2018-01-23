cask 'royal-tsx-beta' do
  version '3.2.7.1000'
  sha256 '7a6619af745169f9cf07161b058000174377ddf938cd4db8c4ce76d788ac4b08'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '6e4d18954a1e9637060bd8d945110884a0cf51684d347e57627d10f7576f38e3'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
