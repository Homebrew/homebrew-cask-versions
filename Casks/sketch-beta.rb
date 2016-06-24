cask 'sketch-beta' do
  version '39,31494'
  sha256 '40ae04bac4d6dab515f5130b3f5552b7b9746e2a9b6ad667177975c36c6cc9f0'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'd915a73e05f96604d3a8715b5472b8b99ba381364bee1d44fb8f49fdcc474643'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
