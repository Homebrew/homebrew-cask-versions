cask "rstudio-preview" do
  version "2022.02.0,423"
  sha256 "a9201feb91d5f75747203bd4b2a7409f9f3b9fc97353c497ad20a68c1a5c50cc"

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
