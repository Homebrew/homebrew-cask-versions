cask 'sketch-beta' do
  version '49.1,51145'
  sha256 'c6f428ded9927a7bae635b81f1f06d83d0ef03688b597c293b4ebf28012d1d4b'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'c661f2bcbd1b9589f9aec337598c1fa70ac731c62d81d77283e8165c3c12639f'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
