class FirefoxBetaCn < Cask
  version '32.0b1'
  sha256 '782e468b0277fd38f57205acf88f7dc3266b0f751ff40859d4772b8f22c7f13a'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=zh-CN"
  homepage 'https://www.mozilla.org/zh-CN/firefox/beta/'

  app 'Firefox.app'
end
