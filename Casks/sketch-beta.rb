cask 'sketch-beta' do
  version '43,38998'
  sha256 '134927c36a4e0f4bcc8ee454a6a75a7fe73f7cdd24f0d35f223509059910a2c7'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '18c2b4692ca6ac143d48eeb95bed87d1ebf61d1f0eafbf8311918fa3f370e381'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
