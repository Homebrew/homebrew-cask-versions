cask "rstudio-preview" do
  version "1.4.1087"
  sha256 "5be4baf729fc881a7757ae3a2c3165446eaec7b499a508a2a7bfebea74f6747e"

  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg",
      verified: "s3.amazonaws.com/rstudio-ide-build/"
  name "RStudio"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
