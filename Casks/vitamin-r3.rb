cask 'vitamin-r3' do
  version '3.00b5'
  sha256 '2ec13aefad55fc59cc60cdbec559e93f3492cf048ab6312daec56a7d9946cf6e'

  url "http://www.publicspace.net/download/signedVitamin#{version.major}.zip"
  appcast "http://www.publicspace.net/app/vitamin#{version.major}.xml"
  name 'Vitamin-R'
  homepage 'http://www.publicspace.net/Vitamin-R/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Vitamin-R 3.app'
end
