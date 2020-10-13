cask "pdf-expert-beta" do
  version "2.5.12,726"
  sha256 "242a6c28af6b608b50cfe6126ce8e4c9e3177893ac11b1f6264de1d45b9341d1"

  # d1ke680phyeohy.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1ke680phyeohy.cloudfront.net/versions/#{version.after_comma}/PDFExpert.dmg"
  appcast "https://d1ke680phyeohy.cloudfront.net/beta/appcast.xml"
  name "PDF Expert"
  homepage "https://pdfexpert.com/"

  auto_updates true
  conflicts_with cask: "pdf-expert"
  depends_on macos: ">= :sierra"

  app "PDF Expert.app"
end
