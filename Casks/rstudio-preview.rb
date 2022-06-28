cask "rstudio-preview" do
  version "2022.07.0,543"
  sha256 "dae4d48972b37c693a42739b590f975f7b7b4b4a107dca3c9502c082af28f709"

  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version.csv.first}-preview-#{version.csv.second}.dmg",
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
