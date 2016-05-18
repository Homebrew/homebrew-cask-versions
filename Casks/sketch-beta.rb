cask 'sketch-beta' do
  version '3.8,29671'
  sha256 'f56a0b7b2d2164379880974f58fc48cd3e963d2530d17a3d3acdf7ddcdd6c0bb'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'a53e4a3bc3bf62ccbba53661db8b0a2c69cd7f121c434e5a24880aa066eb5d88'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
