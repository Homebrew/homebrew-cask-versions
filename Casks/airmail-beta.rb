cask 'airmail-beta' do
  version '3.5.5.478,338'
  sha256 'e2c6f5466bf7fa998e4da11c529150b086b362111c0006eddb9e84cf18510963'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '4fbf72b214d89abd73a429fd6fb53629ea4944c7668d1eb885ea1ee38af68f25'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
