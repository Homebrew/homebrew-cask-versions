cask 'vitamin-r3' do
  version '3.00b4'
  sha256 '027aff755a5598fb4d21cfcf572dc6eb56b9bd0d6eeda0be90e59059cd12e2b2'

  url "http://www.publicspace.net/download/signedVitamin#{version.major}.zip"
  appcast "http://www.publicspace.net/app/vitamin#{version.major}.xml"
  name 'Vitamin-R'
  homepage 'http://www.publicspace.net/Vitamin-R/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Vitamin-R 3.app'
end
