cask 'airmail-beta' do
  version '3.3.3.449,314'
  sha256 'ef20c55934ec700bb83bde293fdf66f2867e63f0bb064b3ceac5c31dabcc3f96'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '1883a17711c0e7d25f0ddcb37085495d9b2bd8290a2d63631f0a0cb955e4b4f0'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
