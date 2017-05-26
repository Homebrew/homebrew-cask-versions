cask 'airmail-beta' do
  version '3.3.1,441'
  sha256 '6ba57eaadf0ac35d73fa5af4c2f1886820f4fc752edaf89e884c57f69d73b460'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '1d6faa5f786f0727a51e7ee84462433daac5741ff35fdc7c2cf62df0b1fdda09'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
