cask 'sketch-beta' do
  version '46,44420'
  sha256 '1c3407f29bc5f512d31c62720fe27d460c461b56a9261ebcd060d9c8cfc7f737'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'dc2b57d4b7ecd4cf5d1bbe7184be197d3dd1cc0cb3ec4027b77d4effcaf6ce96'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
