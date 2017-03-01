cask 'airmail-beta' do
  version '3.2.3.415,288'
  sha256 '8183ee9cef4e6f94a1745dcff5432bacbd8d8f2f9271d7fadc463b1e4a82b2c3'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '94a413bde8ff50972b165d1c411bd714bb3c277e315bbc6a2f38936970acaf67'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
