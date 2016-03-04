cask 'sketch-beta' do
  version '3.6,192'
  sha256 '5ad18a179ab4b8d28b75a7b82e2af97d46de51882f129b2d921e96c386192c6a'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'edcb4acccb74e59dae2d7607633bf77959fa246e55f92953bd5e411d8dbdef75'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
