cask 'sketch-beta' do
  version '41,35307'
  sha256 'f767945f02a3f9f6102a086dae0d0e4a59ab39b7493309ef6373a06ac2e9283b'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '520827c797294d1a73502b728dfb37e9b1e2220ecac1d46dfd595904e4699271'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'

  app 'Sketch Beta.app'
end
