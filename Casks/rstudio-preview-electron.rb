cask "rstudio-preview-electron" do
  version "2022.07.0,543"
  sha256 "6643fc31845de49e8a985338b872b6f2183e09b1519193b4a1dccde352e9cca8"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-#{version.csv.first}-preview-#{version.csv.second}.dmg",
      verified: "s3.amazonaws.com/rstudio-ide-build/"
  name "RStudio"
  desc "Data science software focusing on R and Python"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  livecheck do
    url :homepage
    regex(/RStudio[._-](\d{4}\.\d{2}\.\d+)[._-]preview[._-](\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  conflicts_with cask: "rstudio"
  depends_on macos: ">= :high_sierra"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
