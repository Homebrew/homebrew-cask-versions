cask 'sketch-beta' do
  version '41,35299'
  sha256 '22be06ee43bd4d60bc2e39d6753b3d20381cccda26ac4161b18e9b3cc21a75e1'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '518bbc6a64d8ca9271f0fe49769185875746b713cc379c843b396d286c3358b0'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'

  app 'Sketch Beta.app'
end
