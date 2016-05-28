cask 'sketch-beta' do
  version '3.8.3,29801'
  sha256 '1188d313f42598e0bbbf99669d2504de887ac7bee5c2bebd0a05daca77080623'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '3d04e6c0760d7b56c478e23f3ba6c30a581e8283c68dbc1bb3be6bb16530dd06'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
