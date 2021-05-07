cask "rstudio-preview" do
  version "1.4.1120"
  sha256 "f73ed9608cca8a32e098bed5fe5ae7653a0bcb13a2daf9c9afff8e1fc08e19d2"

  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg",
      verified: "s3.amazonaws.com/rstudio-ide-build/"
  name "RStudio"
  desc "Data science software focusing on R and Python"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/RStudio-(\d+(?:\.\d+)*)\.dmg/i)
  end

  conflicts_with cask: "rstudio"
  depends_on macos: ">= :high_sierra"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
