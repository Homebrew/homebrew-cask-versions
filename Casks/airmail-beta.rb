cask 'airmail-beta' do
  version '3.3,439'
  sha256 '503f66b93dbd065c1a4a9fbe2a88908143ee5fdbf5544f09f42123a3872a12e2'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '2dda353e9e220ffb207d26250734b5b462b46c23f263bc930b27e983dec5a959'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
