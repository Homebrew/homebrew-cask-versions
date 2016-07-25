cask 'airmail-beta' do
  version '3.0.2.378,259'
  sha256 '2253ba96d279edfd1300e87b35add22c1585c6d802803c911db21c1792a27e29'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '1449b8545d1fa8d863395267e73f540561d3ccc454017a50a29ed0a94d6fb58e'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
