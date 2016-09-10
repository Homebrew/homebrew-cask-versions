cask 'airmail-beta' do
  version '3.0.2.384,264'
  sha256 '50731107293cc21187a08324173c8cfd35e3a9f17a0f155b2217a4ef37dad793'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '73b7a2c760e26c9c20092beb8d01c094dc5c47fb8664a4ea6a43bad73a49f56d'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'Airmail Beta.app'
end
