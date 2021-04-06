cask "rstudio-preview" do
  version "1.4.1114"
  sha256 "2b87318dd608086b806aec31371852ac7dccc271732df7d0e915e091af7d531e"

  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg",
      verified: "s3.amazonaws.com/rstudio-ide-build/"
  name "RStudio"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/RStudio-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
