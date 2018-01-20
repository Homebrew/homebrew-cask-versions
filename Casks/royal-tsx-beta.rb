cask 'royal-tsx-beta' do
  version '3.2.7.1'
  sha256 'cbda77c5d61e9df3ec66f11525fb3474c55168f4bffef7b5bab532da72d20330'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '5378719041e40c45874940ef706d120857094d29ca79ba49ca4e151b19d57161'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
