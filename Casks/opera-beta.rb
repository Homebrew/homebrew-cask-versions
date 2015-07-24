cask :v1 => 'opera-beta' do
  version '31.0.1889.92'
  sha256 'b8a403d25c1c75f0bd1705de38b1338156ebea5ee089ca0f26edd2166423ccbe'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
