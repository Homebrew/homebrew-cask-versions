cask 'royal-tsx-beta' do
  version '3.1.1.1000'
  sha256 '3e102578235992d95e52558f1ba41ecebf053fc60b0ebfdbadeb9cf8314be616'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'b6c4080b2693fcd591f3ddb7016804591003a95541446ce37c1905d260e4fe3d'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
