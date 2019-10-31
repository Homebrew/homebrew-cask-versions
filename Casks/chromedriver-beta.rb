cask 'chromedriver-beta' do
  version '79.0.3945.16'
  sha256 'ca35bba4f9315bc9a149ae8e33552e393d459574184d3e1a9ba57bde7e83a8f8'

  # chromedriver.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  conflicts_with cask: 'chromedriver'

  binary 'chromedriver'
end
