cask 'sketch-beta' do
  version '45,43473'
  sha256 '5ce251ab9b3ca86422b08f41f2ce7cdf4900eb25dfe0d10af5f76a4c99ee880f'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'ebeb77a1f54a1c490190959555bf931aabc629af4cda1c9b5c0a2c3b06eb5959'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
