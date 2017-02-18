cask 'royal-tsx-beta' do
  version '3.0.1.9'
  sha256 'b786a8078592a79a1b04fa2a2f29e73ebef6c244085b02a5e2ed2014b1f19deb'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '2a0e5ed47df27ade3523d7a82f91baebc6a70621fd1f43d2cd296a7e3f851332'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
