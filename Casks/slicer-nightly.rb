cask 'slicer-nightly' do
  version '4.9.0.26559,711742'
  sha256 'dafa327fdabb0d271d4371dfbe9d5a344aa717a0a773f76f41c6063f1af5ec3f'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
