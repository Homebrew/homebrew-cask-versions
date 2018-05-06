cask 'sketch-beta' do
  version '50,54971'
  sha256 '7f9d6965d15971ac9f32a1dd3a437504628695e71e443c4bc9867787b5b59bc8'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '2b95b6231312774e72a9653eeb256ad4c4bd41df88730150b608e9d5defea305'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
