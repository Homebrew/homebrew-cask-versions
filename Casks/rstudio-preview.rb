cask "rstudio-preview" do
  version "1.3.1091"
  sha256 "934b67230a69d5c8e5c0012c5bcafe907ba1867d682040408be1b03be4f39a08"

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name "RStudio"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
