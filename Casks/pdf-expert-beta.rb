cask "pdf-expert-beta" do
  version "2.5.14,731"
  sha256 "9024d65d56b96b6a9a83994a44afcb25b5dc4416c78b893c61b2f4eaeaca5d20"

  # d1ke680phyeohy.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1ke680phyeohy.cloudfront.net/versions/#{version.after_comma}/PDFExpert.dmg"
  appcast "https://d1ke680phyeohy.cloudfront.net/beta/appcast.xml"
  name "PDF Expert"
  desc "PDF software for reading, annotating, editing, and managing documents"
  homepage "https://pdfexpert.com/"

  auto_updates true
  conflicts_with cask: "pdf-expert"
  depends_on macos: ">= :sierra"

  app "PDF Expert.app"
end
