cask 'sketch-beta' do
  version '39,31667'
  sha256 '17bac9222fe203754a4b366b74c3b147c182e05aef8f16e157d78528586978df'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '5e65b9fc7bdfed9cd5869fb00567b52f8d4a0330808b36d0e0e34206009d43c2'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
