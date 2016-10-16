cask 'royal-tsx-beta' do
  version '3.0.0.39'
  sha256 'e68b93a1a904044fc77f847e4a7aa748c7f9d542ea373e0c47e3338e2b1b5034'

  # royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'fc5b6c0947973f27a5f343de9d51c6f7a9b325c0187b0962cb000efecef69bd1'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'

  app 'Royal TSX.app'
end
