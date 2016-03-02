cask 'airmail-beta' do
  version :latest
  sha256 :no_check

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '81963e6554a06178942678221adbd94f9dbe9c42a8fabfb01dbc951c06f7e9ff'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'AirMail Beta.app'
end
