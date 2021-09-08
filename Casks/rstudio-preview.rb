cask "rstudio-preview" do
  version "2021.09.0,341"
  sha256 "17926f58bd4250d970282cbf44b1f3c89616de7ed72e41fb5b51e531df162ce7"

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
