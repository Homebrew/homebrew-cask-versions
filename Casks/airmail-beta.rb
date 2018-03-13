cask 'airmail-beta' do
  version '3.5.5.475,335'
  sha256 '13f2a5a554d351965bd3ef1d979a1397c53fc6686d4dd29cf8a8c4fe7c6e747e'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '139287a81275c1d22cab690385d9dfc346a16df91377b041c0e09373f0670704'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
