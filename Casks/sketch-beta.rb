cask 'sketch-beta' do
  version '50,54983'
  sha256 'c4da80540c55ba0bcb5b034adfb10996a3ca316dae5e2c63d50111c9ad4b3057'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'ff4c59fcc6e7d644f98aa52a8e41fc4f32d1ee512ad95fc4ca644f5cc8796988'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
