cask "rstudio-preview" do
  version "2022.02.1,461"
  sha256 "5b268cfad4408d0e118358cf33f39c973a272a7f30aa458f122c9913748fdb6a"

  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "s3.amazonaws.com/rstudio-ide-build/"
  name "RStudio"
  desc "Data science software focusing on R and Python"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(/RStudio-(\d{4}\.\d{2}\.\d+)-(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  conflicts_with cask: "rstudio"
  depends_on macos: ">= :high_sierra"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
