cask 'airmail-beta' do
  version '3.0.2.378,258'
  sha256 '032da28de8f6fef5ad8ed87291aa412b44f7a073bdeb1a685920c5fc0556ad42'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'cd667c650babda4eb5edb2141a86a2c22f97a83a148ae8a6acc5d8bd88e45b22'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
