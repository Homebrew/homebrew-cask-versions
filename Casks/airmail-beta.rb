cask 'airmail-beta' do
  version '3.2.6.430,301'
  sha256 '404d2c80dc793d32a7d639a9e5cf50490158275362ad9d4b713c7c6c269caa7a'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '2d1054e7241c4f2189b59c898e9c66e983fc7f3d51e318c4574cb77496949d1f'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
