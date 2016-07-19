cask 'sketch-beta' do
  version '39,31652'
  sha256 '9d2c0f787816d6d5ad23661d8dadaad0117814b9985fef7c35c8e81f1067af09'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '68457fc69eb3b64e1e1ee50063999c2285795766b9a2789650b18a6856e40c44'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
