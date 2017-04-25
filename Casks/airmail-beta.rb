cask 'airmail-beta' do
  version '3.2.3.422,294'
  sha256 'd737862480e62a364513abc869612baa86711f46228f73bb6df20d79559df939'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '6d94921aa9b6f694e8b1675f2e52ca6590ea5aca199a28c50e4d58965a9dcf37'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
