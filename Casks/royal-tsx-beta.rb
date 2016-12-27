cask 'royal-tsx-beta' do
  version '3.0.1.1'
  sha256 '409cec15ee590f3478d1ae8574c13c082f8f01211a2c1f5227aa135fbfa05eb7'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '6a7343f3f0abd175d06a159dc945e00d2b96f931da9b2d1d4b3c101ee56aa976'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
