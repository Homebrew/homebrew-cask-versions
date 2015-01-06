cask :v1 => 'adium-nightly16' do
  version '1.6hgr5896'
  sha256 '163e5a5eb521ccb7ccf033ac17c3a9323a052c13f8da97eb296e762c96096ab4'

  url "http://nightly.adium.im/adium-adium-1.6/Adium_#{version}.dmg"
  homepage 'http://nightly.adium.im/?repo_branch=adium-adium-1.6'
  license :oss

  app 'Adium.app'
end
