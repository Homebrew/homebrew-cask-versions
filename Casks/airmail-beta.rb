cask 'airmail-beta' do
  version '3.2.9,437,305'
  sha256 '4ebe9bcedaf38452c611095429f40dff474a40c6918ebabecbfa4ea56562ab47'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'fae0f559e72c3b5b14b7ebdbc81c672f9f362e2c1490189303d336ff92c5b510'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
