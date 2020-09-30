cask "rstudio-preview" do
  version "1.4.869"
  sha256 "97029f10891d4739ed02b1ada2569a9a2845d2fe8f90f59ee7895d436cb1e7ea"

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name "RStudio"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
