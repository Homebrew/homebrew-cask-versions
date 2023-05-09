cask "chromedriver-beta" do
  version "114.0.5735.16"
  sha256 "80f1e41949c017d897d8076e400521691cc018aa2276157c35e44a1e1f984b69"

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

  # No zap stanza required
end
