cask 'vitamin-r3' do
  version '3.00b2'
  sha256 '4725de4a2d871eb428320e5ad236543de9c51e56153c14d424f1193d5abe0f6a'

  url "http://www.publicspace.net/download/signedVitamin#{version.major}.zip"
  appcast "http://www.publicspace.net/app/vitamin#{version.major}.xml"
  name 'Vitamin-R'
  homepage 'http://www.publicspace.net/Vitamin-R/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Vitamin-R 3.app'
end
