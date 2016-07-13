cask 'airmail-beta' do
  version '3.0.372,252'
  sha256 '817dc063946736ae7de253865d0afcdf44def6b9772bfb3fc87446061642eab3'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '839aa2f5404215e19347dcaa6150c33267eae05c5a8a42a7ee899f9c8a4e7a97'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
