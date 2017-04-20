cask 'sketch-beta' do
  version '43.2,39068'
  sha256 '244ab37d80f332abb5fd6769699a30deccc789af0ed510e6ebdd0125cf0f47e6'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '3e6611eb7a6a18978017f52ae62d39acbcbd804d9d62af8c7ff68a1c6d242b8e'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
