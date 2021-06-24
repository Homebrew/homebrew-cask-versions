cask "rstudio-preview" do
  version "1.4.1722"
  sha256 "3821ab0f09ea0e84eb8d2e5e4821c1ef583ee20d2e8b9842e6797eab9b238ceb"

  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg",
      verified: "s3.amazonaws.com/rstudio-ide-build/"
  name "RStudio"
  desc "Data science software focusing on R and Python"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  livecheck do
    url :homepage
    regex(/RStudio[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  conflicts_with cask: "rstudio"
  depends_on macos: ">= :high_sierra"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
