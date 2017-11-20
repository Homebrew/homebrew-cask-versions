cask 'sketch-beta' do
  version '48,47218'
  sha256 'ed10efb1aa724805e12aebb828d5672dc6cf8c7202cf1c1f5ca1428e042f582a'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'b51cb114ee03c572efe2e41337a696306fb0c28264ea09b0bcdd9088c1356669'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
