cask 'slicer-nightly' do
  version '4.9.0.26813,735359'
  sha256 '28ac978548dd6819eb6c84a5c712018d38bcdc17f9bae907d29256e4299f0b7b'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
