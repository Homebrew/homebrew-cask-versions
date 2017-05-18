cask 'airmail-beta' do
  version '3.2.7,433,303'
  sha256 '9e2439734874097d0bff6a2c4a0ab6beb767e47c5ca3a61b886821704e01667a'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '391442ed49ad7648fe8686e7aef71dacc5b907e5b893a21ce909982ea91ce9bb'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
