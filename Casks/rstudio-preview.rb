cask "rstudio-preview" do
  version "2021.09.0,340"
  sha256 "29487960948bae1a7668316db6d5cf0efd98cd6fccb1467655ccbb8e45b34b44"

  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version.before_comma}-preview\%2B#{version.after_comma}.dmg",
      verified: "s3.amazonaws.com/rstudio-ide-build/"
  name "RStudio"
  desc "Data science software focusing on R and Python"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(/RStudio-(\d{4}\.\d{2}\.\d+)-preview%2B(\d+)\.dmg/i)
      "#{match[1]},#{match[2]}"
    end
  end

  conflicts_with cask: "rstudio"
  depends_on macos: ">= :high_sierra"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
