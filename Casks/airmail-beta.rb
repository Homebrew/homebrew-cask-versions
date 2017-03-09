cask 'airmail-beta' do
  version '3.2.3.417,289'
  sha256 '7d54f958cb5c44dc94fa10df4f2290b0275eead3f730523a8360919e7d046cb4'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'f1d83f0156c2441268474f4033f72c8ccfa57d536121fc4d7c42300ca7ab26ac'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
