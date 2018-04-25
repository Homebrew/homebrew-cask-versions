cask 'airmail-beta' do
  version '3.5.5.483,341'
  sha256 '91d8d2499a1bc0235ec99ec0774a483afba2f00d1d4626d84b90ccc4b87a872c'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '3dd4483bd944d6e8c73276281a73de0a80e7c8a44d79e8c331334c71a4906043'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
