cask :v1 => 'firefox-esr-cn' do
  version '31.3.0'
  sha256 '1b32c03877f8ae544f4b5bcf8e4a0d31ce9771192130c357954db769c4393dda'

  url "http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/latest-esr/mac/zh-CN/Firefox%20#{version}esr.dmg"
  homepage 'https://www.mozilla.org/zh-CN/firefox/desktop/'
  license :oss

  app 'Firefox.app'
end
