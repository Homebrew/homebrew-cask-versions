cask "rstudio-preview" do
  version "1.4.1013"
  sha256 "ee2f9f083f7a79be9a0656a640051e46789f5600c530e1c56219b3aecc1dc6ee"

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name "RStudio"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
