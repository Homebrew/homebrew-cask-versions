cask 'sketch-beta' do
  version '41,35091'
  sha256 '789aeed0691d587f31dacbaff3eba905a7d5672485b055a9e89737eab8a4c5b1'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'df5d2d3796391aab9df47e74b967ddeb707f7df81d7b6235ebb4be1f6a6c9dfb'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'

  app 'Sketch Beta.app'
end
