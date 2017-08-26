cask 'airmail-beta' do
  version '3.3.3.447,312'
  sha256 'b40a8214695eb182c5d51ddada0da9cae20b2df76d7db84590139f3b260349cf'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'abba926a0993b87360ec4ada3e54273a8d4dfdd52f981fb71a5a937345f8018b'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
