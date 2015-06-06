cask :v1 => 'processing3' do
  version '3.0a9'
  sha256 '1eb6df0322354ffd1a4805048b2b1102f9b397e49fba54fa6b993b0fe01e9d09'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  homepage 'http://processing.org/'
  license :gpl

  app 'Processing.app'
end
