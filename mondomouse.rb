cask :v1 => 'mondomouse' do
  version '1.4.4b4'
  sha256 '64109c9331b5ebdd28503844787b2351d90e627d6179194c9c1ed82320527903'

  url "http://www.atomicbird.com/downloads/MondoMouse_#{version}.dmg"
  homepage 'http://www.atomicbird.com/about/mac-apps/'
  license :closed

  prefpane 'MondoMouse.prefPane'

  depends_on :macos => %w{
                          :leopard
                          :snow_leopard
                         }
end
