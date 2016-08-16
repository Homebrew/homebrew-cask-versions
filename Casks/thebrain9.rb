cask 'thebrain9' do
  version '9.0.101.0'
  sha256 '01c35e65b24e0de65b11a55148d68c3e1eb7fbec66934f49eae6bb6da30e88dc'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name 'TheBrain 9'
  homepage 'http://www.thebrain.com/products/thebrain/thebrain9/'
  license :commercial

  app 'TheBrain 9.app'
end
