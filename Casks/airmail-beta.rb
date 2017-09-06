cask 'airmail-beta' do
  version '3.3.3.450,315'
  sha256 '29a3fe9afb3e050553de226b38735b8dbb74090d1dab1d003530e16863f46c0a'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'ad9d1ce5a838fff3caca8c0d68cf7d6acd2a3e599c409d1c17f0d5016a051eb2'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
