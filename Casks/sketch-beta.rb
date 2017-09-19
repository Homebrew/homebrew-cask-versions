cask 'sketch-beta' do
  version '47,45359'
  sha256 'd33b7f348ee2e931b39b262bf536f9b1f72dd92f8cff1304952d3c7e0516cc1c'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '036d03892f6e7a13147239d2f4cbec8b0985062b5c852a511e5f5e5e7909b7df'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
