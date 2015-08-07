cask :v1 => 'kaleidoscope1' do
  version '1.1.8_57'
  sha256 '105c0c05062536fb8c5267a61ed7155d8273e29e650fd655084612acc326babd'

  # cloudfront.net is the official download host per the vendor homepage
  url "http://d23o3xv0lvihc9.cloudfront.net/KSUpdates/#{version}/Kaleidoscope.zip"
  name 'Kaleidoscope'
  homepage 'http://www.kaleidoscopeapp.com/'
  license :closed

  app 'Kaleidoscope.app'
end
