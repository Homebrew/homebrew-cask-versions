cask 'royal-tsx-beta' do
  version '3.1.2.1000'
  sha256 '3f30e7ba1852eb606646e7400d47ef4e699f7fa130ade25f5c9408e8f74bd818'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '168df77f533ac8100203289aad95d3db694f45f2cca5bf163f65263580e3410d'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
