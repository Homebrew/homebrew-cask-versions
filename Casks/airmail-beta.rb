cask 'airmail-beta' do
  version '2.6.1,353'
  sha256 'a728b354f1065f2b3d92f053af42e5288546103522438f39e5f8ad210442fb29'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '702b1b55240acf127b651b3461e2bc2b56c4abde0ece48ee65dff9b3247f09b4'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
