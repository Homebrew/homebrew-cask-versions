cask 'chromedriver-beta' do
  version '76.0.3809.12'
  sha256 '2be29a02ee8d506ce9fb5be1030a52b221c9a6842786e3a160b9d566879264e4'

  # chromedriver.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  conflicts_with cask: 'chromedriver'

  binary 'chromedriver'
end
