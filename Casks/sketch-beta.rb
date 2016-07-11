cask 'sketch-beta' do
  version '39,31562'
  sha256 '1ccb0b49b6b261d9c18cc8e2a53cb7de3972fe261d145635792e50b6204b2cb6'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'b1c0044805e02d8036c551514f2289f3d8cfc3a0b7a728f664f90143ba9a025f'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
