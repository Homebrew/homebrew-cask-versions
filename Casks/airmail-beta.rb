cask 'airmail-beta' do
  version '3.5.5.475,335'
  sha256 '4567574f44b8fed50146e050b51ee1df7dd9937ad2e2916aa217dfcdf7d1304a'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '8d3cd96f4bd0cc8747a9ebe3cfd6c7ff5889dd37b26986d662075dabc8bb28aa'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
