cask 'sketch-beta' do
  version '48,47232'
  sha256 '6fcadd63d5308d82813913834247e7acad3efd1becb329bf38ea952838352866'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'f68ab84737e7b428844b977615b68c8410e607a917e394a40be329456db6c203'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
