cask 'sketch-beta' do
  version '43.1,39012'
  sha256 '3fbbb6b931f5ce7c89bb1500ef1b52b2bf7f6cc2f3a92c08429f9b88980c24cf'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '5fcfbfd7a527113fd175cda1239ed372e63e390cac8bcf4c2e05f14d3655bdc5'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
