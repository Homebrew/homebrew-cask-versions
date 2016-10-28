cask 'royal-tsx-beta' do
  version '3.0.0.42'
  sha256 '0bbea5531f2b0bfe0746e060ce3d2b0e233764d385e042b34415528e5a3ff525'

  # royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '33c3ff28b8c1be20ea4fbd3c883d43607e7e8aad39d39426ecaf000560d1d6a1'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'

  app 'Royal TSX.app'
end
