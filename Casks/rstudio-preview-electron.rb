cask "rstudio-preview-electron" do
  version "2022.12.0,353"
  sha256 "fd4bebb5b030c81c0b0dbdd782960c564a0eb037e243435a8265fcbcb03563b5"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-#{version.csv.first}-#{version.csv.second}.dmg",
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
