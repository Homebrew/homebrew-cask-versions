cask 'sketch-beta' do
  version '47,45392'
  sha256 'b29a96a135453ba9b551d67c400c272b032e3c89538691bf11130a066a6f2855'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'c942afd30a773865d3f0d38c367d6144bb9bd7433aec97c1486a28a82f618993'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
