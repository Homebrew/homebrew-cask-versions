cask 'sketch-beta' do
  version '40,33734'
  sha256 'a7aa0c692ab8e52bbebd45b1c3becff71796a1209661d1ffeccfc2deac0c4104'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '735884a75219ffa44511ed5a86e57a5c4d57bb3e18834fd1a546248e10b479fc'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
