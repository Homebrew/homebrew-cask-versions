cask 'royal-tsx-beta' do
  version '3.0.0.40'
  sha256 'fe266ef9f2b768a18291979f0a051d438be687e4e9160e2dc26458844c6d916a'

  # royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '29c30bb7ca89807bd09ebeb2d3010d595a9201302f453b5a48b3b31423a363a1'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'

  app 'Royal TSX.app'
end
