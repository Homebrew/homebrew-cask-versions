cask :v1 => 'opera-beta' do
  version '31.0.1889.50'
  sha256 'ec091181a330d276cc68068d79d47549f75d06eab479d5db5728d76dca09a386'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
