cask 'sketch-beta' do
  version '48.2,47327'
  sha256 'f2d1d61785ad45ca48905d5f5160abdec43c7462f82c1fd44ab3dba5087357f7'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '20562be4a610e8ee844d1b7d3ff73d0aa9a112d8f9c14b5e85f74e4a7130f192'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
