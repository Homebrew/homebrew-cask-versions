cask 'chromedriver-beta' do
  version '77.0.3865.10'
  sha256 '79a644afb1344f24376bc37a29a3d85b0f1824e7ec9e06c8cdfa3e06dc6ea34f'

  # chromedriver.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  conflicts_with cask: 'chromedriver'

  binary 'chromedriver'
end
