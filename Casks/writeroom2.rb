cask :v1 => 'writeroom2' do
  version '2.5.2'
  sha256 'b395d434b6c2f7ef32adcc2df142952e165c330cb7c57f24b9017eff37386753'

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/writeroom/WriteRoom-2.5.2.app.zip'
  name 'WriteRoom'
  homepage 'http://www.hogbaysoftware.com/products/writeroom'
  license :unknown

  app 'WriteRoom.app'
end
