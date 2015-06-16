cask :v1 => 'firefox-esr-cn' do
  version '38.0.1'
  sha256 '01ce3fde0c70388f5ac432bc745f474bd5b2ab76556d687c636224f31d3bd952'

  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=zh-CN"
  homepage 'https://www.mozilla.org/zh-CN/firefox/organizations/'
  license :mpl

  app 'Firefox.app'
end
