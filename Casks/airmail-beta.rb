cask 'airmail-beta' do
  version '2.6.1,358'
  sha256 '7796e891a9f4c8e43cf8f0dc6e3670b7c35f172cb1d8ba1bc86273adb996abc4'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '4b0e448f366d20f1c51e29a5b6e72083aacf30f752349e77ced78ecce23fc6cd'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
