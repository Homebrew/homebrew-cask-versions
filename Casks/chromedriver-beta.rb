cask "chromedriver-beta" do
  version "99.0.4844.35"
  sha256 "dd4947019656848ae57be0437ba7958f127651fe4a58ff74b08861bc91cf8e55"

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
