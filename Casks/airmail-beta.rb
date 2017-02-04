cask 'airmail-beta' do
  version '3.2.408,284'
  sha256 '59dd612f92833b600dac56984911768ec454599cc7c9f78a95f2617fd1710d91'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'e6c9dd3360edb79b129b06d9d1cc79ceb1abb47abb76c6e292f1fc7685285539'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
