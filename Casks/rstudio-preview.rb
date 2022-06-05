cask "rstudio-preview" do
  version "2022.02.3,492"
  sha256 "4f5943222bb2d158fe4ccbbab2323781fc3fdd904e4f00feee8d529476960739"

  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "s3.amazonaws.com/rstudio-ide-build/"
  name "RStudio"
  desc "Data science software focusing on R and Python"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  livecheck do
    url :homepage
    regex(/RStudio-(\d{4}\.\d{2}\.\d+)-(\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  conflicts_with cask: "rstudio"
  depends_on macos: ">= :high_sierra"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
