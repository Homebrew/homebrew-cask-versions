cask 'airmail-beta' do
  version '3.2.3.418,290'
  sha256 'dc9cf38953fe6f4528e7eaf462b552b17d70e7ebfdf49efb220205ab5a1e47ff'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'cc447d343228a378e9553c02e6ee036da9342734c5844b13b6dc7cf28aed46f8'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
