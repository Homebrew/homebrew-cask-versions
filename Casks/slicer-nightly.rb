cask 'slicer-nightly' do
  version '4.9.0.27462,883249'
  sha256 '5140e84b07639db50f626cca13b18424bd35ab18a62fb2615643f98bb17006b5'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
