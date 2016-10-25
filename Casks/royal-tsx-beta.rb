cask 'royal-tsx-beta' do
  version '3.0.0.41'
  sha256 'e20e53002925d251db80c32d61d80b68c2272b5b03f2a15eed9ac0de6000a67e'

  # royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '0d4101a48d31d4c674ecbdc5038fda8dc4ec4975d70c223e52555542c5af681a'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'

  app 'Royal TSX.app'
end
