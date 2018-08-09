cask 'slicer-nightly' do
  version '4.9.0.27341,854367'
  sha256 '29e2697f1d789a10841d2f20de22f7a4ea7426f6a14f0f61395bdf3044866ec7'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
