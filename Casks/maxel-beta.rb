cask 'maxel-beta' do
  version '2.2,40'
  sha256 'a7d756ad64312d4d9ab1056259d2a55ab7245fc652bd0686671f67c15a3bd416'

  # hockeyapp.net/api/2/apps/eace0efdc2a9f246400a77168ca6850a was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/eace0efdc2a9f246400a77168ca6850a/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/eace0efdc2a9f246400a77168ca6850a',
          checkpoint: 'eeb5538c76d225966ac31ca9b45a72ac0eac98be6bdc9fe04327cc1655a2db14'
  name 'Maxel Beta'
  homepage 'https://maxelapp.com/'

  app 'Maxel.app'
end
