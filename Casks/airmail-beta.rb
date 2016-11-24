cask 'airmail-beta' do
  version '3.2.398,274'
  sha256 'a93412d21fbfd41c7168ad6984d1d80bd032bf1f8e19b9c3b11e8bf25177b64e'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'fae7508d1a1865f72ff1e670bce199ed792a27b78cb88e5390cf5b27c21139d7'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
