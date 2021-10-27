cask "chromedriver-beta" do
  version "96.0.4664.18"
  sha256 "d6e350740db8470b4d7bee7dd3a7b9c7278163a5303581c3c8bd2d4354064c12"

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
