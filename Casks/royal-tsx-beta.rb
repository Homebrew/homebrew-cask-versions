cask 'royal-tsx-beta' do
  version '3.0.1.7'
  sha256 'e08ffa515f77d967bb81459e30950d0dff4c3fe40498bd6a96b86d4554bd820c'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '9c394117fa45049433d506dd273e8479d3ddf4981f269442000d641fe3df20b1'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
