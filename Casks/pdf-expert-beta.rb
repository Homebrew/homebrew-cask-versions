cask 'pdf-expert-beta' do
  version '2.5.8,692'
  sha256 'a047806bfada444aceeafb508770e6997d594ce230dc77fcc5167b19dae7d685'

  # d1ke680phyeohy.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1ke680phyeohy.cloudfront.net/versions/#{version.after_comma}/PDFExpert.dmg"
  appcast 'https://d1ke680phyeohy.cloudfront.net/beta/appcast.xml'
  name 'PDF Expert'
  homepage 'https://pdfexpert.com/'

  auto_updates true
  conflicts_with cask: 'pdf-expert'
  depends_on macos: '>= :sierra'

  app 'PDF Expert.app'
end
