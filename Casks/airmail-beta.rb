cask 'airmail-beta' do
  version '3.2.402,278'
  sha256 'b022a6bbea4cbdf61fde8beda3903dd32fed17b2c47331d809c63bd5ae655962'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'aa622b499bd2eb0e0c5a881fbdd42d0c1a5f8b26d1e883c05964fbcc27059f13'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
