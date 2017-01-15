cask 'airmail-beta' do
  version '3.2.405,281'
  sha256 '9562119464a8f94fa354c1ce29806ec2f095810072a858601401131bb071f4a2'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '7da3efab6bc20520a8697d1d521b66ef127a7cacf78faa5c196bdd16748221a7'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
