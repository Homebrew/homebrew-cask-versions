cask 'slicer-nightly' do
  version '4.11.0.27946,948152'
  sha256 'b26a9406a74eeacb3ec480f55bd273a67f592e31f0376db6c53cb7526d8fdf26'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
