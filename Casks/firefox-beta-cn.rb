cask :v1 => 'firefox-beta-cn' do
  version '38.0b9'
  sha256 '3fa651cb44d00ec4ec0f5fb1d7d274096febb79ccab838790242d23b0efd6895'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  homepage 'https://www.mozilla.org/zh-CN/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
