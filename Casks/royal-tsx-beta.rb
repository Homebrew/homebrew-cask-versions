cask 'royal-tsx-beta' do
  version '3.2.8.2'
  sha256 'c12592ec1a4310dd313f297fad875853f8303b19951f5ee9c65035c9c02f47c8'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'fd103838e708d7b062531ba52b494f617cb945f3e0d19c49c5e42ff2a57146c8'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
