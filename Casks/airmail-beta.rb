cask 'airmail-beta' do
  version '3.0.1.376,256'
  sha256 'a8fc59c3545a58cf19860779c5759ac415481e029aa2bae2c91ae48e9a33a5b5'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '67bf215650e85c84bd50c1f5cac0cfa72cadeb81c39941121ac317f02bb642e4'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
