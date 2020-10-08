cask "rstudio-preview" do
  version "1.4.904"
  sha256 "5b7494c21e31f96c51c480457102e11351d2bbe58a2ee61e142739c73f93b71e"

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name "RStudio"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
