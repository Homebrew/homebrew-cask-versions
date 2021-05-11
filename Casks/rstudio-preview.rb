cask "rstudio-preview" do
  version "1.4.1707"
  sha256 "25bf1f3a15deef33fff8a5927306e6e34f10ced2fb03852d482e41538cfa6c68"

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
