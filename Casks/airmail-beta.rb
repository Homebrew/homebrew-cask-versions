cask 'airmail-beta' do
  version '3.5.3.460,322'
  sha256 '4cee9a709ecac635d20704fef17b4c51df411ece9535d7357be6b9b71e047862'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'a98ce6665526595e935236bd3c405d08225ab078ffa1d8e945ee9ddb3792d6f7'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
