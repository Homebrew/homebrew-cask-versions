cask :v1 => 'adium-nightly15' do
  version '1.5.11hgr5899'
  sha256 'e07b3a29b0ed0dcf97a5d77a18b32653c6a6ac598b8c60ebf2d2cf333d4f9275'

  url "http://nightly.adium.im/adium-adium-1.5.11/Adium_#{version}.dmg"
  homepage 'http://nightly.adium.im/?repo_branch=adium-adium-1.5.11'
  license :oss

  app 'Adium.app'
end
