cask "rstudio-preview" do
  version "1.4.1094"
  sha256 "01d83b1df9414327165cee5a240af288e5be9e4ed8572a713175aaf2b925a43a"

  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg",
      verified: "s3.amazonaws.com/rstudio-ide-build/"
  name "RStudio"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
