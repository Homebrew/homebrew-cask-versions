cask 'airmail-beta' do
  version '2.6.1,359'
  sha256 'd0d5255b70bb23d90d64d467d112e9a197fca021d4061c352bdb6b401243d2db'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '5c922da1c9e722f9d03d79b3903cfaa61c79bfa90154c73551b4cddc4e38fab0'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
