cask 'airmail-beta' do
  version '3.3.3.456,319'
  sha256 '69201dc0fc70a4fc45f5d0c78f2066357ab7d00e01941467ad7a1bbb24c37d1e'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '2755bcee529afbad674241f8600d3d90889bbf3e0dfa223891631b448c47dd5d'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
