cask "rstudio-preview" do
  version "1.4.1103"
  sha256 "20148bd6ee7ed80d85ae8b309ebaa5d68df282d610056faeedf4acb8716aaaa2"

  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg",
      verified: "s3.amazonaws.com/rstudio-ide-build/"
  name "RStudio"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
