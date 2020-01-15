cask 'pdf-expert-beta' do
  version '2.5.1,661'
  sha256 '25d1687f7bd7c5f5b2580b311ac1b04caaf084136546c7e8f373aecac477ac6c'

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
