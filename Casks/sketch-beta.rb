cask 'sketch-beta' do
  version '40,33747'
  sha256 'ce31ea260b77d4a0efa770ed031c7409a4068a30a79172e5496b188c334496f0'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '217fc9745079e731b5286ac5a7900422df7bda1740fc5b3af87b4bfa62e16e0e'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
