cask :v1 => 'firefox-esr-cn' do
  version '31.4.0'
  sha256 '9182216395abb12464a527306cbe53e14555d565c302752290696cbfe44f925b'

  url "http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/latest-esr/mac/zh-CN/Firefox%20#{version}esr.dmg"
  homepage 'https://www.mozilla.org/zh-CN/firefox/organizations/'
  license :mpl

  app 'Firefox.app'
end
