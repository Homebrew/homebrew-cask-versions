cask 'airmail-beta' do
  version '3.5.5.477,337'
  sha256 '8d52d5b2d2c7ed34f6676292d6efd064332e3687a565d2950327aa82965686f8'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'e9a367142256bb016a4699b1562d914352ff8adafef241f988d6ad5ec9d54c2a'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
