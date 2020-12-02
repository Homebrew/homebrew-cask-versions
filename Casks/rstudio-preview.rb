cask "rstudio-preview" do
  version "1.4.1066"
  sha256 "332e11c27b246022a7fb371c2b5aa84a470ad5cba4607972f92ee1324fcd3d4d"

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name "RStudio"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
