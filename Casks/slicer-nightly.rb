cask 'slicer-nightly' do
  version '4.11.0.27565,908135'
  sha256 'ceb0f4f6a0ff5709d19ce0545676aa4f773a6ecf495da4e2536a50d15b889d33'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
