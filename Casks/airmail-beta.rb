cask 'airmail-beta' do
  version '3.5.5.482,340'
  sha256 'cb3a4f99991aa9c2ee236a4b1f9fad8292ea2c2bb033c7486eb36fa9862dd21a'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'd11a6ee9e777722df3cd5d357be9624fd0fde59b59eaaa73728bc43aaac07479'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
