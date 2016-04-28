cask 'airmail-beta' do
  version '2.6.1,354'
  sha256 'a97453b395de1348570dd1c0574892dde593d303e8c51a0f7098344ba01194e9'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'cf91435c81325101a9628459e0cc529c91f61d74121d5431bc7bc6f247375ddb'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
