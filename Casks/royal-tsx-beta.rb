cask 'royal-tsx-beta' do
  version '3.1.1.2'
  sha256 'f1529887cf365903e3bc7d5a8be37f216639707ebd77216c997ac3ec73fdff5d'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '23aef5fbf296007bfbb78bd3b5b86ad6e0ef42bd29b35707dbb069cd133d2fc0'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
