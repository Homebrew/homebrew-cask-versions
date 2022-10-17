cask "rstudio-preview-electron" do
  version "2022.07.2,576"
  sha256 "ad3681003bbb243b800b55aafee7fcfbff2dbdb71fc0eba1cb21317bb9a608e3"

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
