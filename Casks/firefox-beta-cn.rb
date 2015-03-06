cask :v1 => 'firefox-beta-cn' do
  version '37.0b2'
  sha256 'daf2be5301ee022cc94d22f8d27af84c6ddac82c156a92e69d1377267aa2822e'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  homepage 'https://www.mozilla.org/zh-CN/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
