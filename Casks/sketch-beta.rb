cask 'sketch-beta' do
  version '48,47142'
  sha256 '8b3e24fe165e5dd3f008980df0074baae45ae43ce51198233d94a46168d729d5'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'c2a4bac14efce3f17988dfb07c607ad61a80e80219eedcca41fc00c4488c1d2d'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
