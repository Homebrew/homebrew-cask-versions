cask 'slicer-nightly' do
  version '4.9.0.26630,712956'
  sha256 'd94810427c2acc82a95f2d3cae0218cd21b1af669e5ef62ce3b26f63fd5bd667'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
