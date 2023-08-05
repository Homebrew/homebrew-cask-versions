cask "rstudio-daily" do
  version :latest
  sha256 :no_check

  url "https://www.rstudio.org/download/latest/daily/desktop/mac/RStudio-latest.dmg",
      verified: "rstudio.org/"
  name "RStudio"
  desc "Data science software focusing on R and Python"
  homepage "https://dailies.rstudio.com/"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
