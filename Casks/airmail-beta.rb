cask 'airmail-beta' do
  version '3.1.392,270'
  sha256 'fa83d2382e63524d423a50681dca8238c412bd553ca692fcb422aabccd1838c3'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'e11c14384c0cef47a980981b1bbbb2a8e4063d70097f1e47051e15dae11d75d5'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
