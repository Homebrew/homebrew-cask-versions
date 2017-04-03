cask 'airmail-beta' do
  version '3.2.3.421,293'
  sha256 '2ff0921a15a948136fcf58303b6f04fcf9fcec9119d44d539bba166a69a982c5'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '19f5eae7776db3c69b95512d2b693448870221f3868874a81647e8ae1736d491'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
