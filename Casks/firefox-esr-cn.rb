cask :v1 => 'firefox-esr-cn' do
  version '31.5.0'
  sha256 'f0104eeca9fc29fed9731f5c63a9fb5cab0bf50fd5e0fc66e5da1e24d8de1b4f'

  url "http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/latest-esr/mac/zh-CN/Firefox%20#{version}esr.dmg"
  homepage 'https://www.mozilla.org/zh-CN/firefox/organizations/'
  license :mpl

  app 'Firefox.app'
end
