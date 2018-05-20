cask 'airmail-beta' do
  version '3.5.5.485,343'
  sha256 '70c5c3fafc6922724166b99345be9f3de7774575a71d2e755f7dad49bb983327'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '9f7bf77c5a41f5a954528764d7089e153f31e5dcdcc5ff8e28d89233ec7b27db'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
