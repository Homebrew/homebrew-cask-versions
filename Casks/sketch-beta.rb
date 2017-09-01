cask 'sketch-beta' do
  version '47,45292'
  sha256 'f8d3435015a6bfd15c6c7b97b1c10f199917e0938c35470a9d8c8787a546b426'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'e4b8621536790ba164fb95eaf47ec013d62f3a3d6b6e67cebc8db028e24a1faf'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
