cask :v1 => 'hyperspaces' do
  version '1.1.1'
  sha256 '9ea53ac06f0ecc5ed23b4fb6c61f0a9d4eb2d3141ff3a169315ef725a5522253'

  # amazonaws is the official download host per the vendor homepage
  url "http://cocoabots-downloads.s3.amazonaws.com/hyperspaces/public/Hyperspaces%20#{version}.zip"
  homepage 'http://hyperspacesapp.com/'
  license :closed

  app 'Hyperspaces.app'

  depends_on :macos => %w{
                          :leopard
                          :snow_leopard
                         }
end
