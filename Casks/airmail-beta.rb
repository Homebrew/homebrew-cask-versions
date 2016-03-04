cask 'airmail-beta' do
  version '2.6.1,352'
  sha256 '8ddc915a1e7e5031ff592925d55d8016992e17f497d90135d4dbafac127ee6f3'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'fa45a73c4d4dc64377e3e5ffbd356fd416a573d676c8d9eb74465d1100f52a01'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'AirMail Beta.app'
end
