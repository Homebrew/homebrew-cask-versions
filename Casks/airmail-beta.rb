cask 'airmail-beta' do
  version '3.0.2.387,267'
  sha256 '54075c15b1a91d2197655c79f00d08d2b45a47900a6c8af2beddf6c22e70b3b9'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '999d39f13813ccf68f59df00a134e13e133816d88862df104089eef814d7dbb0'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'Airmail Beta.app'
end
