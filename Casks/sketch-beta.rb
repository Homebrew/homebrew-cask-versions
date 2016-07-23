cask 'sketch-beta' do
  version '39.1,31721'
  sha256 'b91011e59a887764431b26312a4adb1bb99e9b01dbf86918b03530ca0c457d19'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'd5ae5e40b73d9e40284ef2db7db695ac6c1142ea52fa3bb54ee4058b7d7fd405'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
