cask "rstudio-preview" do
  version "1.4.1099"
  sha256 "1ca8b9299ec2b7c420edbe09b001f3d29aa1571c87efbfa136c7f198d38bcc71"

  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg",
      verified: "s3.amazonaws.com/rstudio-ide-build/"
  name "RStudio"
  homepage "https://www.rstudio.com/products/rstudio/download/preview/"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
