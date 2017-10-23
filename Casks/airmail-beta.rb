cask 'airmail-beta' do
  version '3.5.3.459,321'
  sha256 '4c7013761e99e2d7a436798bb69c9069ceda100ccda05301ae5930a71b44e18d'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'ab55c0e1a2e014a1cd4bd1db888c30a7688671e1287dcbb09cbd0fffc1405d13'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
