cask 'vitamin-r3' do
  version '3.00b1'
  sha256 '47e95920e11cd0d9f9aa8d64ac7a9b8d4ce6c7b2728557b09d738771e38d76f9'

  url "http://www.publicspace.net/download/signedVitamin#{version.major}.zip"
  appcast "http://www.publicspace.net/app/vitamin#{version.major}.xml"
  name 'Vitamin-R 3'
  homepage 'http://www.publicspace.net/Vitamin-R/'

  app 'Vitamin-R 3.app'
end
