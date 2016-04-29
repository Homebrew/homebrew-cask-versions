cask 'airmail-beta' do
  version '2.6.1,355'
  sha256 'ac6abb0be3ce0c815bc582fdce1e799b89daf9417896887c36496df3ffccab69'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'a80cfdee62d07f76c4c47e54e17edc35b817c7279eadade786bcc0448392701b'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
