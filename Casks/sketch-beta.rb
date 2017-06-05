cask 'sketch-beta' do
  version '45,43276'
  sha256 '32df24ea5f23fba293d080cbc59d2e90e62c6480d00bff08f3fd6fbb9d88175e'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '156a6feda72473dc788aa7f938e5d36523966d9602b4a15e9d7a301542fbb76d'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
