cask 'airmail-beta' do
  version '3.2.400,276'
  sha256 '0480c4291a006e244d73d9be474b20f110a642661fc9be53ca81fd8b86419247'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '49897693664d890ab27f4651115f9cc717105941d27ff376c2e28f58dae558f6'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
