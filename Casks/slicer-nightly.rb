cask 'slicer-nightly' do
  version '4.9.0.27158,798500'
  sha256 '8fbe70b2e6b308b76df72547124e59cd2cd789200ebcb1a9e0a7e0c007f2f0d9'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
