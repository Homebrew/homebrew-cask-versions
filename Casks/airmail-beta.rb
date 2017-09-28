cask 'airmail-beta' do
  version '3.3.3.453,317'
  sha256 'dc64da2dfe7bbfd5c284797f6307963209278922e7510fe8f39a9fd106d3e0fe'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '4565b3d8cea067776652f74d22875ee689f0e7bb295386f5a5941e248c132515'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
