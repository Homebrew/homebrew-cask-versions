cask 'airmail-beta' do
  version '3.3.3.451,316'
  sha256 'bf27b4d52adb0a03f4f6a71dcea1538cc2da07c69c77e57f4a54322c8431573a'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '47f773b48e1fc436855d275a0212b1de53cbece644ed533f46d86d8a58b5cb42'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
