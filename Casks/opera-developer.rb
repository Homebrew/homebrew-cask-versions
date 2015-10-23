cask :v1 => 'opera-developer' do
  version '34.0.2026.0'
  sha256 '7da1f05924f34d562c88960ffd4577fc231b38b2e87b8a3c3ee5ad570d544ce1'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
