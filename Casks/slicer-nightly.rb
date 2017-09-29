cask 'slicer-nightly' do
  version '4.7.0.26398,693065'
  sha256 '925b399c5fb3763bab90890f0d4c4a6c494ee498be2eb8e562c5d129004aee24'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
