cask 'airmail-beta' do
  version '3.5.3.465,326'
  sha256 'fa2028a0233dbef36b5451ce6da659423879b7e21470b2eae6740fe6aaf83f98'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '3b1c74ec26c305b1e231d97d4d1aa2a70f07c50670ccc7b70284e6e2b7124e5a'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
