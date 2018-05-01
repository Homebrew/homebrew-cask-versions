cask 'sketch-beta' do
  version '50,54935'
  sha256 'b5da38074396dbbba7cb158a39d861e733dcfd73b6dcecfe154f8f9c03e84376'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'd06fcde251129e3e00e654c14cb027e6a0fdca65110d4a4b6a68e9fc748dfd59'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
