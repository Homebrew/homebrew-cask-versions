cask :v1 => 'processing3' do
  version '3.0a5'
  sha256 '4aca3ca91e83c01a27ebb16f34360ef9dc3678397ab10d2a305653a910dbb55f'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  homepage 'http://processing.org/'
  license :unknown

  app 'Processing.app'
end
