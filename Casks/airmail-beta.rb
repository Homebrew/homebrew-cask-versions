cask 'airmail-beta' do
  version '3.0.371,250'
  sha256 '5a20938e37107b64575c986d15692573c0100dc64cf8acbcda96049920f5e89e'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '82a85b04636f8325ee8cd2cc759260ce6c257231987f0c3adfc6ac0373d8ee93'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
