cask :v1 => 'sketch-beta' do
  version '3.3.2'
  sha256 'd85fb4b25dcc281a4211b73a668cf9aa25caa3fb9e50875b4d6fafec65ad1bc1'

  url 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/95?format=zip&avtoken=cf895f8e545b066b458d504fe4e3d8eeecc732db'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
