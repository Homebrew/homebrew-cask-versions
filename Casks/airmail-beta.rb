cask 'airmail-beta' do
  version '3.3.1,308'
  sha256 '371e04cf74e2cd74a8c007be912bccfec2703f48cf613fde057ab4963ccd13e5'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '5a1977160297cb2bd7548847a8e8b8ff79d643d9c0e353ca8ce1607b63b0aa52'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
