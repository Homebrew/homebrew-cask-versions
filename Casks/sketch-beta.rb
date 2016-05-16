cask 'sketch-beta' do
  version '3.8,29667'
  sha256 'b8923bec66aa0661efe13022042f16d9d19e81249f5d99b15f303f6527b72b4a'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '84b96e925f9a06ffd0f079b9134b9ba1da30f0309881d47e8407c9fea22ec11a'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
