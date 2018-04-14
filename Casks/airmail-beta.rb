cask 'airmail-beta' do
  version '3.5.5.480,339'
  sha256 'fec2e9b2cf064642c2500bed03d2bfbb2942a07b4f56535174a0a033870ccded'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'cef7a6ff98bab93982c26682aa10a7a36afb8d7a703ce5e7bbd754abeb79d266'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
