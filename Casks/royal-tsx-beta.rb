cask 'royal-tsx-beta' do
  version '3.0.0.28'
  sha256 '2f7c0794a1abf21b3bd97a566a57d78e5a6555abafe10207ab553610e13943d9'

  # royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'db1fe2ffef4312586285e6c1fd22f03da47010b152fbf17ea6d9a977234d37e9'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
