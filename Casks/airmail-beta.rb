cask 'airmail-beta' do
  version '2.6.1,356'
  sha256 '6c2042d8b00df49648b2f839a3adc8137bd54ed3046368b2973d8a4b4dd2ec83'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '7a134c5fb0300ab7a2f465afc2a4dd81a4f8ca215508b2da7dafbb5631a1ba6c'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
