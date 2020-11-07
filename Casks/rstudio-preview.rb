cask "rstudio-preview" do
  version "1.4.1010"
  sha256 "bb6a183873e03251fd1af3dca7bc59db5a0636cc6c42ea7a72cfbe8a949bc6d2"

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name "RStudio"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
