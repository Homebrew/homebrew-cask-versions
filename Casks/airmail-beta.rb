cask 'airmail-beta' do
  version '3.2.6,428,299'
  sha256 '94d67eae641ea371372df2e3eb796e9e331ee7c0d918dc89357b28cbbfffdb1b'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'bf05521bcc81028159f0e472e293760c8d511dfe538cd4ea58d77a38beb5f781'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
