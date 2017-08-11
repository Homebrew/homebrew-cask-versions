cask 'sketch-beta' do
  version '46.2,44476'
  sha256 '7201d619a174c880a3101a7491d16a1220ba0771c40e18446b304b86a98494ad'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '64f7fad4de82e19850eb506f7a3d2949117f105c311b359f1d2b1a6dc96a0a20'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
