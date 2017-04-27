cask 'royal-tsx-beta' do
  version '3.1.4.6'
  sha256 '7a973c07adfdc81fc5f1ae191cfb2a84b5c34ae1a42e2d98948da3386654775d'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'f5afec21495681a2f294a8cfe943abbb99ed6092208402ad602b73b257eeeae3'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
