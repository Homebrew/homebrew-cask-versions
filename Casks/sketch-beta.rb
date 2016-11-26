cask 'sketch-beta' do
  version '41.2,35396'
  sha256 '3ea7827266edc767408970e1d0ea602bf4b65446f3b0f75223bef67c17398403'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '5df0081637828de3942ef26f305b110edd7a948bfcd83f0ffafeafd50c999898'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
