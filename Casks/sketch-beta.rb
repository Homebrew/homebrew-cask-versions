cask 'sketch-beta' do
  version '49.1,51139'
  sha256 'c39c7c9a37da216717e43cef801f4a996dbd58169ea419b1af61eba6f400a2c9'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'bf116f095332b0f6950a8ab60034085a023c0cb379983efee90ae65c380482d2'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
