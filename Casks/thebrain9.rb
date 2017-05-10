cask 'thebrain9' do
  version '9.0.107.0'
  sha256 '15011129e764b8637b9846c59b4d921b44bb0fe0eba06d988fa8ef7a6b279f1f'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name 'TheBrain 9'
  homepage 'https://www.thebrain.com/index.php/products/thebrain/thebrain9/'

  app 'TheBrain 9.app'
end
