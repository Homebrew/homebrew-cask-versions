cask 'airmail-beta' do
  version '3.5.3.463,324'
  sha256 '4982b6b4f79cad21a33b4cc467b56511975f30a3ffb546242f549c3db506f9ff'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '3ba7b864711bc4d2fc5c4c939b23edc191141a0a9c3b26bee4f3689452b58b6e'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
