cask "chromedriver-beta" do
  version "109.0.5414.25"
  sha256 "e1fcfd4d75b38ec147493595757e72bf13803138a8cb3f3917394ed975fa7af0"

  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip",
      verified: "chromedriver.storage.googleapis.com/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://sites.google.com/chromium.org/driver/"

  livecheck do
    url :homepage
    regex(/beta.*?ChromeDriver\s(\d+(?:\.\d+)+)</i)
  end

  conflicts_with cask: "chromedriver"

  binary "chromedriver"
end
