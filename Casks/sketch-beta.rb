cask 'sketch-beta' do
  version :latest
  sha256 :no_check

  url 'https://beta-download.sketchapp.com/sketch.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'e4b8621536790ba164fb95eaf47ec013d62f3a3d6b6e67cebc8db028e24a1faf'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
