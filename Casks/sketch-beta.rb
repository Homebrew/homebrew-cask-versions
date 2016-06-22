cask 'sketch-beta' do
  version '39,31443'
  sha256 '0f8d7e5235a48770cee9592b11b8d05157b551aff5ce38881a36e312f398af1f'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'c7dafefaa44404836b9a7601c32386fa611d83e1fdd65f51a6970c44e5617655'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
