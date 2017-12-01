cask 'airmail-beta' do
  version '3.5.3.464,325'
  sha256 'c4454687d2d0945c7b6f9c55af3092b6325ce5f392e83d88e522dbd75b3b62ee'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '29185cf75de05f6f477a340ee54b45810bbda4f1ab238779ac9dbf61a7f0bfff'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
