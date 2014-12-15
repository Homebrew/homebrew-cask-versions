cask :v1 => 'spacey' do
  version :latest
  sha256 :no_check
  url "http://files.windowflow.com/Spacey.zip"
  homepage 'http://www.most-advantageous.com/spacey/'
  license :closed

  app 'Spacey.app'

  depends_on :macos => %w{
                          :snow_leopard
                         }
end
