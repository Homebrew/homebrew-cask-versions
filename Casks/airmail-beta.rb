cask 'airmail-beta' do
  version '3.0.2.383,262'
  sha256 '5d8e723f0911b7a53f40f5af684ac5fec36b37daf5fa12d15008f841191ad508'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'a5791408e88971fbf35003f33d30170b16bb2b263eb21f89c460c2c3e4e0c537'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'Airmail Beta.app'
end
