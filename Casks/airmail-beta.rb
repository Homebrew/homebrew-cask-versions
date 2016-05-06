cask 'airmail-beta' do
  version '2.6.1,360'
  sha256 'd28b200703c7369c03cdba8a8a8e75718cf9cd23ba5862031e4ae2e3db4ebacd'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '32d79ffe649ea698e68673885fd2cd843b76f35e7f36840ea48458e4fdda4667'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
