cask 'airmail-beta' do
  version '4.0,456:1d5be16b070a28f1d94639690cb9764faf862fce'
  sha256 'b319e3ab6e7ffc159bac49c3c882e50d44c472c0745d09e6fb41436d26fb61fd'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma.before_colon}?format=zip&mctoken=#{version.after_comma.after_colon}"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04'
  name 'Airmail'
  homepage 'https://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
