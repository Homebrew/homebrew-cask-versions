cask 'airmail-beta' do
  version '3.2.6,431,302'
  sha256 'c0b6818dbd3560c7e71b7b3661e286a6a13e8a4cf0a2510ba9611e4379bc0f1d'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '14e027cff6ec368725cb81a0e2d27cce17589b40ccfb82ade416579f83448134'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
