cask "pdf-expert-beta" do
  version "2.5.17,737"
  sha256 "b2bde16ea50a04045461b56ddf03e741951fac0504920982b8c6fab06bbb0e31"

  url "https://d1ke680phyeohy.cloudfront.net/versions/#{version.after_comma}/PDFExpert.dmg",
      verified: "d1ke680phyeohy.cloudfront.net/"
  name "PDF Expert"
  desc "PDF reader, editor and annotator"
  homepage "https://pdfexpert.com/"

  livecheck do
    url "https://d1ke680phyeohy.cloudfront.net/beta/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "pdf-expert"
  depends_on macos: ">= :high_sierra"

  app "PDF Expert.app"
end
