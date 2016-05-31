cask 'airmail-beta' do
  version '3.0,368'
  sha256 'b1da1a93f570c78e3507b75518b18d4f010fcd915b3be7477b0afc460801ae63'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/247?format=zip&'
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '8a87130261608652a570838658fe20503d580407c704fbcb885f49d661e290e1'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
