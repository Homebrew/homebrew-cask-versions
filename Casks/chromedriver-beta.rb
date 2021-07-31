cask "chromedriver-beta" do
  version "93.0.4577.15"
  sha256 "b65908853e9c42acbc8ecd2e42b6c9edbebab9b96a557ef08b39bd5b1e1bae33"

  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip",
      verified: "chromedriver.storage.googleapis.com/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://sites.google.com/chromium.org/driver/"

  livecheck do
    url :homepage
    regex(/Latest\s*beta\s*release:.*?ChromeDriver\s*v?(\d+(?:\.\d+)+)/i)
  end

  conflicts_with cask: "chromedriver"

  binary "chromedriver"
end
