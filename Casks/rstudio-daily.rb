cask "rstudio-daily" do
  version :latest
  sha256 :no_check

  url "https://www.rstudio.org/download/latest/daily/desktop/mac/RStudio-latest.dmg",
      verified: "rstudio.org/download/latest/daily/desktop/mac/"
  name "RStudio"
  desc "Data science software focusing on R and Python"
  homepage "https://dailies.rstudio.com/"

  conflicts_with cask: "rstudio"
  depends_on macos: ">= :high_sierra"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"

  caveats <<~EOS
    #{token} depends on R. The R Project provides official binaries:

      brew install --cask r

    Alternatively, the Homebrew-compiled version of R omits the GUI app:

      brew install r
  EOS
end
