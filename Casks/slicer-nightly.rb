cask 'slicer-nightly' do
  version '4.9.0.27082,783087'
  sha256 '20f1d0421c9b62e31c9c1951f0a960e6fb6f145aef83edebd00d8b98738bddf1'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
