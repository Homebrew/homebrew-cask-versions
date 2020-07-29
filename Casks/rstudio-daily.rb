cask "rstudio-daily" do
  version :latest
  sha256 :no_check

  url "https://www.rstudio.org/download/latest/daily/desktop/mac/RStudio-latest.dmg"
  name "RStudio"
  homepage "https://www.rstudio.org/download/daily/desktop/mac/"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
