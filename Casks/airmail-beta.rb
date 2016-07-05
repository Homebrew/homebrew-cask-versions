cask 'airmail-beta' do
  version '3.0.370,249'
  sha256 'e736d4cfc9fecede209b638eb475747dc70035bcb7504a4bb958259f3c050a12'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '6367bdb92f216adf52f2a0875d102a34cdc9e6c63df09716e0a89d81cd7350f9'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
