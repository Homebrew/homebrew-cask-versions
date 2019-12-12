cask 'pdf-expert-beta' do
  version '2.5,657'
  sha256 '64f9b19cb65ecd4ff500b54106698ec6a070b5de99a5f3b795c9174245a96e02'

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
