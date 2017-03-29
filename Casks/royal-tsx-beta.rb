cask 'royal-tsx-beta' do
  version '3.1.4.1'
  sha256 '56b166c0b5833f464203d391bbe0332bea1f192e9188e6d112958604e4d17b49'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '4ee67332e9d98ad0019094daac9574fbe13cacab88936040342c610e6428dcd3'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
