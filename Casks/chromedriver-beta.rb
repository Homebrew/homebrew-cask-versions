cask "chromedriver-beta" do
  version "105.0.5195.19"
  sha256 "2eaa35f3144f6a7e151066b88ce9b55c5843131f25a5041be0786ddbd2c6b825"

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
