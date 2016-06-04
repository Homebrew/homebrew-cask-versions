cask 'airmail-beta' do
  version '3.0.0.369,248'
  sha256 '5f93aa3f6c5f34a31002a2071c8b4f8948958cea4236a91ca97aeec46f98a037'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'dc31be4a6b08bfd479186e6aff447be49d0e76f41bd82c0ae150d75bd8f49dff'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
