cask 'sketch-beta' do
  version '48,47092'
  sha256 '636c99427c828bd25d3210376ca99aca675d312dd3af06bdad208e85a162a0d1'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '5001c56d23daa46c33c3e45732145c8de02c8292b02d71cfcc74fc65c97f9370'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
