cask 'airmail-beta' do
  version '3.3.3,445,309'
  sha256 '04669fdc15ff1b6be66ef369bea55b3cc17f385673adaa94565d15ff2e4bc044'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '4721a3ffb702fac31f4ca74420819ddc0bde92a676f52fb1cb0a05ddcae7c633'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
