cask 'royal-tsx-beta' do
  version '3.0.0.25'
  sha256 'cc792c26a66eed19bc0cb9022ebbaace9f1fe804e092edb2a5956d2c6677a8ee'

  # royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '2b00818b731bf7bb58ed685e04b4c389fc2fd87fe0624d570d36bd4c388fe34d'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
