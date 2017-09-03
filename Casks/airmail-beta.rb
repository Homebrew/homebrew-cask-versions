cask 'airmail-beta' do
  version '3.3.3.448,313'
  sha256 '86222d1c53ab3cf677e11b5399106917e18edc9399300d40f5e85daa84c282cc'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '79a803ec42951f09c99142baeea8ce4996fc0677bdae0fd91c8022ba4d28ec43'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
