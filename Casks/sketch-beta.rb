cask 'sketch-beta' do
  version '42,36679'
  sha256 '10d31f2cadeb2577576b01c7a2fe3f0960abce3c2f910e4c03948775b8c14c36'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '76f17c27571614826c489d3bd8b1935dc85832813451f066f264717aa71f2f0d'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
