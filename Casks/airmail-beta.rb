cask 'airmail-beta' do
  version '3.2.411,286'
  sha256 '5018b453cc143ecb6ade55ce0bdf96975266b6112bdaa4ab8d80cabd19fa211f'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'd35a5bbc7d5dfca741a61e9e710efc39ccad97088045c29dcdd303d2779e0a18'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
