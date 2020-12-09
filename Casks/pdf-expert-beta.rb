cask "pdf-expert-beta" do
  version "2.5.15,734"
  sha256 "c793faede34b8e553cad5bfc04cd4e4d709b791ca19e6f8cd514a7998bdbd0b3"

  url "https://d1ke680phyeohy.cloudfront.net/versions/#{version.after_comma}/PDFExpert.dmg",
      verified: "d1ke680phyeohy.cloudfront.net/"
  appcast "https://d1ke680phyeohy.cloudfront.net/beta/appcast.xml"
  name "PDF Expert"
  desc "PDF reader, editor and annotator"
  homepage "https://pdfexpert.com/"

  auto_updates true
  conflicts_with cask: "pdf-expert"
  depends_on macos: ">= :sierra"

  app "PDF Expert.app"
end
