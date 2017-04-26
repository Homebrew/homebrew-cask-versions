cask 'airmail-beta' do
  version '3.2.3.423,295'
  sha256 'a585da884c298d3e59ac92d5a5a616558c71f5797ee9f59da547e7033b3e4a12'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'bc1f18ec26824d7a2f2d7d401415f3f17880b5bc5ef9a000dcc048bef3b6d25a'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
