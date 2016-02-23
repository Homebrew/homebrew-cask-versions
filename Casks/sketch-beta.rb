cask 'sketch-beta' do
  version '3.6,187'
  sha256 'cbde5776c1c20a376d5c8827e87f310d0d4093e34ffacedca0ad5806cfe83c12'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '14cb48636fa4c6d689a884399d20b9c18cd3ec8ee5d62374d3a0eb70e6f31180'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
