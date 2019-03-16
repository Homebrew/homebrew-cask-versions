cask 'slicer-nightly' do
  version '4.11.0.28014,980673'
  sha256 '5142653662701741bc5e550e9fcc778128223c0f04d73d8c49891364e23350d7'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
