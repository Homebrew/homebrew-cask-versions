cask "rstudio-preview" do
  version "1.4.993"
  sha256 "1ad6f6eb88ec01984b0e2a1e085748f34b23503052b04568c67582991cc2e88c"

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name "RStudio"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
