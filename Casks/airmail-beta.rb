cask 'airmail-beta' do
  version '3.2.3.414,287'
  sha256 'b35aa3f5030ccd646b109ab98410b526d489b725ccc1f0ee77a37972260d2200'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'cea1ae70dafa5c0a385189f6125ec3f6e2abf9f4aaf715e7cd4fd5cd4c186f5b'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
