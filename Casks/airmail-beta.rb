cask 'airmail-beta' do
  version '2.6.1,363'
  sha256 '768f3ed8fedc93f0a8438bab7d5080607fb73c5fbad5ef487b119602606c2487'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/244?format=zip&'
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'b5275b15ddf8ba13159293b3704ecdb7a53c688c36df0ba7740b990a602dd51d'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
