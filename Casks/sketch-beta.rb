cask 'sketch-beta' do
  version '46,44404'
  sha256 '9e17115f0080f9c88f3ed086b4b0d8272ca1344fbce2b302f13523f9af99bfda'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '5ac3099fcfc2dbe7cdd7a4575c7608cd6d499b9781c1fcc8d155e34f1997fb75'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
