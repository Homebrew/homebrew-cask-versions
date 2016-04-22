cask 'sketch-beta' do
  version '3.7.2,28276'
  sha256 '1de31885f0c318feacd84f9e10ff12583f16369b2fda1e09e45081188f0d2573'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '59fcd643a7eae6432a13700d59074ab2782c735af52ee9280060411079b28fcf'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
