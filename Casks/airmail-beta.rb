cask 'airmail-beta' do
  version '3.2.407,283'
  sha256 '9582c1aeeb157e746d3ba86a700e64fe1c51abeccb648334665d9466de2313bc'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'ac1c64901488165a98f2fa2f6944f873d2b76507bf83bbb30aecc5f0bc1d905c'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
