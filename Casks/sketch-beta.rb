cask 'sketch-beta' do
  version '47,45396'
  sha256 'b5493b4d2e2ad755633e440e2c85abd513a424f6199c244f74c1dc31eca4190e'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '6b95803f6f52214dc3a551320287e2eebf912d55426e05ae4d6d6a7d43e86517'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
