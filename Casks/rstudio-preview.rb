cask "rstudio-preview" do
  version "2022.07.1,554"
  sha256 "7b1a22854f10a9647a01ba442a50c26f0177b4cc9aa6faf9321a72eb861e5ca8"

  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "s3.amazonaws.com/rstudio-ide-build/"
  name "RStudio"
  desc "Data science software focusing on R and Python"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  livecheck do
    url :homepage
    regex(/RStudio[._-](\d{4}\.\d{2}\.\d+)[._-](\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  conflicts_with cask: "rstudio"
  depends_on macos: ">= :high_sierra"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
