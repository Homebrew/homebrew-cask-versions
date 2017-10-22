cask 'airmail-beta' do
  version '3.5.3.458,320'
  sha256 '41dbadae0d585e488ace4837914b8422cc3f5cd46e7d16507eb567d73768cb8e'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'd96693a9e70419f36754c7dd42ac2f93debc9d96227f6c79092f17eeafd2ad90'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
