cask "rstudio-preview" do
  version "1.3.1081"
  sha256 "b9afdb04535e76375eca1fc644ca6c6afee25b6b0678e75249a13a59b4fac9f6"

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name "RStudio"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
