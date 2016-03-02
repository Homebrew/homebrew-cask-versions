cask 'airmail-beta' do
  version '2.6.1,351'
  sha256 'c658b6f8d938f76c3f0090c48b2b49bc4b5eab2eebb0219dcdfb251dc77617cc'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '391aa223ba036528ea652f2c09c53847693ca27e450d98800f014fbeae3afb3d'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'AirMail Beta.app'
end
