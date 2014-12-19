cask :v1 => 'spacey' do
  version :latest
  sha256 :no_check

  url 'http://files.windowflow.com/Spacey.zip'
  name 'Spacey'
  homepage 'http://www.most-advantageous.com/spacey/'
  license :closed

  app 'Spacey.app'

  depends_on :macos => :snow_leopard
end
