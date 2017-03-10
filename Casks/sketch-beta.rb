cask 'sketch-beta' do
  version '43,38963'
  sha256 'f4fdffeed4491c77eb8192502e902e55129f6431b7e03ad441d3b1e697a47b75'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '98236c4d5e142e4ee0e8713d951db1b069745f7e9d9294e4ea8d4f71e0f4cb6a'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
