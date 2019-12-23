cask 'pdf-expert-beta' do
  version '2.5,660'
  sha256 '7407fee12905fd3d1170471cd7ad234796373e16fffad7369b4f7915d174e9fc'

  # d1ke680phyeohy.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1ke680phyeohy.cloudfront.net/versions/#{version.after_comma}/PDFExpert.dmg"
  appcast 'https://d1ke680phyeohy.cloudfront.net/beta/appcast.xml'
  name 'PDF Expert'
  homepage 'https://pdfexpert.com/'

  auto_updates true
  conflicts_with cask: 'pdf-expert'
  depends_on macos: '>= :sierra'

  app 'PDF Expert.app'
end
