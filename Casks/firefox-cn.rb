cask :v1 => 'firefox-cn' do
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=zh-CN'
  homepage 'https://www.mozilla.org/zh-CN/firefox/'
  license :oss

  app 'Firefox.app'
end
