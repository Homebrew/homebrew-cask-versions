cask 'sketch-beta' do
  version '42,36764'
  sha256 '9e2b61f5c68ae4ed0c125f78051ed3a8f9400e427b8d1aa1a8959552500eccf4'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'a4b21774325d1aab0c0872b358e6ad0f95102bb6ea3ed523b3200e6f995a277b'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
