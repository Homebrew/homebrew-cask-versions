cask "rstudio-preview" do
  version "1.4.1717"
  sha256 "2cf2549d484b1dbbe553e3b2ef26d22e1a5613d6911a7d91c57b7eef5eedd198"

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
