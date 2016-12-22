cask 'sketch-beta' do
  version '42,36644'
  sha256 'c95a364cb7cbd0f1390d456252feb66cfce756a7330ad242588340593c698414'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '230d2cf506cb9cab5a611507bca406d21555a2a7d3ee447e2c5d153e3fec2a18'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
