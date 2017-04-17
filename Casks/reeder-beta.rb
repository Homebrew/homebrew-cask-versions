cask :v1 => 'reeder-beta' do
  version '3.0b7'
  sha256 '604a83ad8a76b601a7edaf92761136deb73c4495b53b445478ab641e213fcb1d'

  url "http://reederapp.com/beta3/Reeder_#{version}.zip"
  name 'Reeder'
  homepage 'http://reederapp.com/beta3/'
  license :commercial

  app 'Reeder.app'
end
