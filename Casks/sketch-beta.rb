cask 'sketch-beta' do
  version '47.1,45415'
  sha256 'aac36547d7019de3a9bb43fc11bb2c5f54630c220b537f87dba5251dc6351a74'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '03f9d32444c82919ec135f4432ddb35ab69f83d6fb444a5f410af07af8999ca0'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
