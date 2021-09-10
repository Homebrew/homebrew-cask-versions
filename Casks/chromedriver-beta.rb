cask "chromedriver-beta" do
  version "94.0.4606.41"
  sha256 "8a653c0b27264ae2b9ffd895cfa58b8bd9fefb20204a4526d1b554ac278480d5"

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
