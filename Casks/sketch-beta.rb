cask 'sketch-beta' do
  version '48,47228'
  sha256 '43a5bf9b34908440d3030cdfad118169dd65746674f9f630f17f05c293c25f6e'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '8149c2739ce4eb23bfdccfcc7483bd6a5d740651402a7b90eef339cd07c6f823'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
