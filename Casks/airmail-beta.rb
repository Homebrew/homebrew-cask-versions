cask 'airmail-beta' do
  version '3.1.394,272'
  sha256 'aef297ca33f941c13aa8a19708a8a447507018760a3cb7817ace0015161d1865'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '5ab2929bcb84b68a612440f17c1296dc9c6891952a5cbaf3bc1574306cc5abbc'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
