cask 'slicer-nightly' do
  version '4.11.0.28009,980094'
  sha256 '11e17df3b22cc82e92a4b48109c1d1606f26054a5710c01475163dfe026e5ec6'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
