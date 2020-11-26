cask "rstudio-preview" do
  version "1.4.1056"
  sha256 "b6ed5b1555513a5b74e164bd59cbfefc46029d1d2ae8dab0ebd5df48b7f56616"

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name "RStudio"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
