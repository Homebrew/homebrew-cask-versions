cask 'sketch-beta' do
  version '41.1,35375'
  sha256 '6adf599aa68f849bcea772ea84bef0cfcb9fadb7dd889c1a5708e8b15722534f'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'db7d6e094e6ff5245999b5ceefa270e494c6fb027e81a318bf0aa7678bdd7eae'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
