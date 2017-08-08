cask 'sketch-beta' do
  version '46.1,44463'
  sha256 '27419a98af0d51de8efa5389dc1d720b68af7122a09e1bcd8ca81e38c8ab0f88'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '0880f28b6c386c0bcb7facbf5accc723de48f91564fa194b59adcab9e31c6532'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
