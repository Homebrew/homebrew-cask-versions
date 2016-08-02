cask 'airmail-beta' do
  version '3.0.2.380,261'
  sha256 '3bab481bf6179bc6ccb4fbccb73a548e88b1baf951f68a777be2170df48043c3'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'c6232721b90c6ffd5d759c5b9911ec196b19c21c07bae51b326bc4341a642bfa'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'Airmail Beta.app'
end
