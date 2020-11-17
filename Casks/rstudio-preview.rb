cask "rstudio-preview" do
  version "1.4.1032"
  sha256 "22fdb49f2b8541bdf3e45f6df230fc036752c1ffd2f984490b34a03b0a97f8b2"

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name "RStudio"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
