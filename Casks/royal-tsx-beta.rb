cask 'royal-tsx-beta' do
  version '3.0.0.26'
  sha256 '9569f671e281ac25747883b7f9ad6a30591f715667c8fc6818a62c0cd9d19c21'

  # royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'd6ab9f43ee40573b2fd80827b36f3dc4ee763ee0b5f51a2abd1b27c7805a6be4'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
