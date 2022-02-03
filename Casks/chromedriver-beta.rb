cask "chromedriver-beta" do
  version "98.0.4758.48"
  sha256 "02cd8dee4f7089ebefef017df32453d9194a1b6de00aa7dcb01e1bebb0dea526"

  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip",
      verified: "chromedriver.storage.googleapis.com/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://sites.google.com/chromium.org/driver/"

  livecheck do
    url :homepage
    regex(/ChromeDriver\s(\d+(?:\.\d+)+)/i)
  end

  conflicts_with cask: "chromedriver"

  binary "chromedriver"
end
