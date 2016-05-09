cask 'airmail-beta' do
  version '2.6.1,362'
  sha256 '84684e0a8234fcbbe0a63b3422b39869b5837c6a92e3e8d4cdb5df37c848ed48'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '6d7529efacd43349a85b5c8c942387928f56372665890945dd98313a40fbb500'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
