cask 'airmail-beta' do
  version '3.2.396,273'
  sha256 '6457a328a8b666b9288b08c8d950a4fb21577803bac81dadac8896c93ecb6ec2'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'b8a2cc20f3d5340471a2d37db6bd3b70b001ef58a46688a16d28f44de5b849ce'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
