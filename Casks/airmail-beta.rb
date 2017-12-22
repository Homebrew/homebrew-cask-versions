cask 'airmail-beta' do
  version '3.5.3.468,328'
  sha256 'e581d0aa68d33f4a68383e23b99473d400f68f49f31524b81204b948d1eb00fa'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '44a9b64537b4b3c7f6969f949e5c74672dd95cc6861ccb1fe490e848c2e8a389'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
