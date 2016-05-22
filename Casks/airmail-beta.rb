cask 'airmail-beta' do
  version '3.0,366'
  sha256 '11d49794b27b11aac027256e402fd3e55830d32bd062343ba67d78f4160dccc6'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/246?format=zip&'
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '63071cbc3e38e17842cab7d296e85dda1ed7cd90b3ac152aa70fc0a125124096'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
