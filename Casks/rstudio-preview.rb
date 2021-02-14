cask "rstudio-preview" do
  version "1.4.1106"
  sha256 "c64d2cda7c73686540313e26822f927f839c048f9135fe2f3db10f0fd26083f5"

  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg",
      verified: "s3.amazonaws.com/rstudio-ide-build/"
  name "RStudio"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
