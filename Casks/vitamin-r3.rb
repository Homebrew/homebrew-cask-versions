cask 'vitamin-r3' do
  version '3.00b3'
  sha256 '16c02a666526052c096435d402137556bf9e204bfdf05dfe36b2ed9cc1c42490'

  url "http://www.publicspace.net/download/signedVitamin#{version.major}.zip"
  appcast "http://www.publicspace.net/app/vitamin#{version.major}.xml"
  name 'Vitamin-R'
  homepage 'http://www.publicspace.net/Vitamin-R/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Vitamin-R 3.app'
end
