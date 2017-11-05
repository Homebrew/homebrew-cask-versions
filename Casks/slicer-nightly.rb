cask 'slicer-nightly' do
  version '4.9.0.26551,709294'
  sha256 '8cd9ba7374796455ef4badc854246a89e0fc8c2d4e8b5c83ecc5a361955d6c7f'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
