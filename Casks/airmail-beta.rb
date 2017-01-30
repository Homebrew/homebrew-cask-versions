cask 'airmail-beta' do
  version '3.2.406,282'
  sha256 'b6868d1f342f370bcb7b42fa01b0b91c21aef334e0d36bd2afbce32ee21d070a'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '2e93f5eb8de5cf1ff0ca2c9036aec30335d2ddeddb1205617fb92586a8ecc833'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
