cask 'royal-tsx-beta' do
  version '3.0.0.50'
  sha256 '2e7a0deec5dbd1fd6cb486e80d66ff5af90b098c7499ba1b01ef22148981ee30'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '55f441c13efd27a9554d98f39122a8612151ec7520368ed451fed8b4de9911d1'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
