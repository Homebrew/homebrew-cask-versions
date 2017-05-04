cask 'airmail-beta' do
  version '3.2.6.426,296'
  sha256 '00f9f06d25ff99a59070e3faa447806c1988bc64efa43b9ba44948ede798fb6f'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '2fc89a068921128bb90a19120256564f184b10335b686ee224f5773ca738b07e'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
