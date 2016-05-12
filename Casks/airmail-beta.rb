cask 'airmail-beta' do
  version '3.0,364'
  sha256 '447ce9fe31cdeab0c4e9ce7fb9d7ee6b44b47e3bdaf12b8abf541c4cf21472dd'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/245?format=zip&'
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'fb401617167497f4161a0aa16d8c7d773d895c3148d5c7ef34195d5924935731'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
