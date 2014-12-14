cask :v1 => 'warp' do
  version :latest
  sha256 :no_check

  url "http://ksuther.com/warp/downloads/Warp.dmg"
  homepage 'http://ksuther.com/warp/'
  license :oss

  prefpane 'Warp.prefPane'

  depends_on :macos => %w{
                          :leopard
                          :snow_leopard
                         }
end
