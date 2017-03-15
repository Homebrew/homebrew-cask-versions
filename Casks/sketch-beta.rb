cask 'sketch-beta' do
  version '43,38976'
  sha256 'f0c0d0dd6b0c72684a158f456af4715f43e0673e669d09f8f5830f15860ecce6'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '1809b075466d4c7175ea24689a72474e969df56d724721301d59a207691237de'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
