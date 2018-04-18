cask 'sketch-beta' do
  version '50,54800'
  sha256 '3bbd3f418d0ec4887eb5f61665a2c077015eb2374d4371a4b95704eb133b1381'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '566f23f81c26e7431eb71134b5daaa68b39d3d29471c18b196f6df4707b0b83c'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
