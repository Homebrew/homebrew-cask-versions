cask 'airmail-beta' do
  version '3.5.3.462,323'
  sha256 '973a9ab3e4f7a6bfe1d85904ee1268624991e26805b1dbe0724c0ff331b2ede9'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'f39bd8ebdd35c1e9cae2903eddd4297a19b7ce3f68de611fe0e63d42cf418d22'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
