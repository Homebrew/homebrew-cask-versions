cask :v1 => 'adium-nightly15' do
  version '1.5.11b2r5922'
  sha256 '828c2e2f21a2e500aeb580d018afba0f360956334d655a8280d4f9ba09af7b9d'

  url "http://nightly.adium.im/adium-adium-1.5.11/Adium_#{version}.dmg"
  homepage 'http://nightly.adium.im/?repo_branch=adium-adium-1.5.11'
  license :oss

  app 'Adium.app'
end
