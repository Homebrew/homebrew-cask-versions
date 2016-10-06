cask 'sketch-beta' do
  version '40.1,33801'
  sha256 '210f61fc1b6e5122311927353a5ad06a31a954fe84bceaa395d8e47625e1a619'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '8333fdba3869479cfcf03807f836de92ce20d9c97a95e5dd2d4ff7c216988c82'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'

  app 'Sketch Beta.app'
end
