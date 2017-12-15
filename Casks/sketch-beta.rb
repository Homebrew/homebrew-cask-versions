cask 'sketch-beta' do
  version '48.2,47319'
  sha256 'b29efdb7aed1a67fb81e0ee7330a9f65827ca8a73f4b640e4b9a01980a8dc535'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '773ac46069403daf55fe5244f8b94e02efce128d606ec7ff28bd64a150d11119'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
