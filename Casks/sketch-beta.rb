cask 'sketch-beta' do
  version '3.8,29658'
  sha256 '2fd35e62ec82472a3f58e469f10efe5568f56a61431dc7ee052bfb956a9a92bb'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'cf460e7ecdf968b5986118c9c3ce86101bf16b5abac972e66a274cb101d74ad3'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
