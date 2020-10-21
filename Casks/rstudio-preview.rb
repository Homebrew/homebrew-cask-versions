cask "rstudio-preview" do
  version "1.4.953"
  sha256 "4ca790cfa16256d37b4f7682a279da8fda9b5d6feee35f4af9a2664ef2ecce9a"

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name "RStudio"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
