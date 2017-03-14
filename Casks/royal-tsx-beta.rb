cask 'royal-tsx-beta' do
  version '3.1.1.1'
  sha256 '706c6d7710af4306723a682d897f3a22be9e282b89022a76ef3d9dd7a3cbb53e'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '6772f2a49d3508cad94f8cc363549275bb5ca35342d38cd01a127ec93133107c'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
