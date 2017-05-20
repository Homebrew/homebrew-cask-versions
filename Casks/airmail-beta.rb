cask 'airmail-beta' do
  version '3.2.7,434,304'
  sha256 'b9a2e7d1811f78942ae03d138affb6e9fec5e74d4001ad14793e2a69b7f58ba6'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'f4d9506736ce5ebfeeb073fb945c641ca976e63900088d933009d5eb0e9358ef'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
