cask 'sketch-beta' do
  version '52.2.0,67122'
  sha256 'b3bb9ee1da34ceb2ee43df59022738f7dbeecfb3b43c8310d94e7ebf96e61c4d'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
