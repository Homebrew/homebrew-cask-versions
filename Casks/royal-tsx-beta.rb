cask 'royal-tsx-beta' do
  version '3.0.0.43'
  sha256 '4dbf98cd83582f6b4c480fb4813354432677e3cf711593a9b4a578cd24c7c01b'

  # royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'b6ecaac8bcf67648f16382b85eac8b509892376203a998d754a0a73e79074210'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'

  app 'Royal TSX.app'
end
