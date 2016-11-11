cask 'airmail-beta' do
  version '3.1.313,271'
  sha256 '217f5d302450f53eaa965b8170c908b967dde41410e1270a789f8db91e528241'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'c004239af5894f946a7e4393bc5080c1b7bcc600b7fcb7f152bdb1fad05223d3'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
