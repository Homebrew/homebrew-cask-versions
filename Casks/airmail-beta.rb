cask 'airmail-beta' do
  version '3.2.404,280'
  sha256 '8f337a77e5a1ee42f1643991f23e1328deb3e49218db14767b3f3f141c09e183'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '85e6824d64638fc31877c8204dbcda4b221c2cfaa9abb04dc5b808de92f51208'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
