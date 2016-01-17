cask 'airmail-beta' do
  version :latest
  sha256 :no_check

  # hockeyapp.net is the official download host per the vendor homepage
  url 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04?format=zip'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :unknown

  app 'AirMail Beta.app'
end
