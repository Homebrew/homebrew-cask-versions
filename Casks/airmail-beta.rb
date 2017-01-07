cask 'airmail-beta' do
  version '3.2.403,279'
  sha256 'bb7a8d5efc87af8e560d3eef13ff63aa6c2fae9bfcd44ce72d3bfc1ab6ba49e0'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'e526a19f0f99ff5f43b3f2663c29116c8ca5cf167ce1fe77fd2aeac16289eac8'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
