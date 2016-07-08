cask 'sketch-beta' do
  version '39,31533'
  sha256 '0ec3cdf3a3c8ab59d055bbe00a9cb0038f9dc4e3da5975bb4cd502702b2286fb'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'ad9cb48df4119d1fe4962b23966c32765d446a6d88212962418f310398ef121d'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
