cask 'sketch-beta' do
  version '50,54675'
  sha256 '1cb1683dfd5711a518fe713fc4f277c944a7fe494a968c48420e1a8b7f60c48b'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'a713ec9278648b4baa18a13bbcd3c9a8c634cb1f6521954692cd08f0b98a7343'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
