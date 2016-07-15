cask 'airmail-beta' do
  version '3.0.1.374,255'
  sha256 '3c076535aa162581a59e6cb4275b08687abe621fb5c64054aa28fe4f70ff3b47'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '4e1c79e2baf30271e1339a8db10003b71b2811042430ac86b90716c639755850'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
