cask 'slicer-nightly' do
  version '4.9.0.27282,839675'
  sha256 'f547779e05eed14e7711e063a4ecea0d0711e0694586b90674bb8c17ba541945'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
