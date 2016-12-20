cask 'airmail-beta' do
  version '3.2.401,277'
  sha256 'bc98f613f37a94c157ed0e83dc262b2fa772395d4604e969618e019a0508d9d8'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'd186dcb88c615fe158030c08d106e55ad684f78eae65e23647a08add12d84edc'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
