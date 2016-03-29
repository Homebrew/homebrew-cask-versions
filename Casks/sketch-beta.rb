cask 'sketch-beta' do
  version '3.7,195'
  sha256 'a26d6a3d00e825cbdd15bcff95cc071eb02e4bd9028305c062358e3033a971e1'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '838b4ea87f3deab35b9ec53c5337422cd86a630f51199103ba35ed2a7c9aa3bd'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
