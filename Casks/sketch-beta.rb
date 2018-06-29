cask 'sketch-beta' do
  version '51.0.0,57336'
  sha256 'f677c99b6bd90f0105d94796a22377d048846c8d763c0c815971e09314968e20'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
