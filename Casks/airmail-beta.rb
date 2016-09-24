cask 'airmail-beta' do
  version '3.0.2.386,266'
  sha256 'de585cd058bf9f00a208db51b91ffbf65450b86ce085b5ea4b783bbfb8e0aa32'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '5ecac942573de0e515764ff66406d9da148c65222ab7c31a7ff87f744cc37234'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'Airmail Beta.app'
end
