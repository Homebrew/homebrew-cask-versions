cask 'sketch-beta' do
  version '40.3,33838'
  sha256 'ba172b8cbf8e5156b640f6ac8447cf3e9f49e997d75199c55fd0162e4f6326c5'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '197e2bef075ba264a8cecf9df173a36953ed099663fad19d46a7dfbf2b07c12c'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'

  app 'Sketch Beta.app'
end
