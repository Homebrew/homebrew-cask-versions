cask 'airmail-beta' do
  version '3.2.6,429,300'
  sha256 '45b7ed1653c395466b30fb60b69b3b84a73530eb72af1a4a88ff80caff007d88'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '94b61b56b79d6b8476ff9681883f8235be6521285b823f80e346e1ff1998607f'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
