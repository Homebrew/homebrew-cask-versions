cask 'sketch-beta' do
  version '41,35231'
  sha256 '6a13bed1349d2dd2f384cf49793824224c927da03d05e828ba93ffe8063f0c9f'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '54c7b159c1f2968fcdb8253b3520e282a6b97962e18a308023e9277d43361909'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'

  app 'Sketch Beta.app'
end
