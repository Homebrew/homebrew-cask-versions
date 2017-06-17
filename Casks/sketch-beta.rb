cask 'sketch-beta' do
  version '45,43445'
  sha256 '7e0533d80cc3148e7145aeb2fefcd1ba40ad58211a312d6b3f30b9fca8b403bd'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '5819d13af65deb62f75c3739840c799539deb5f169f1ffe10ed0459293d8bd69'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
