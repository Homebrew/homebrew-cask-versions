cask 'airmail-beta' do
  version '3.2.6.428,298'
  sha256 'cbf742863978b9cee4b79638c523a82c9285e3eefae5ad6659441152d7fb57af'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'd4e87f1f180e59823ec376ec05ac61df7e2265886595d28d76e1f29b98c1f090'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
