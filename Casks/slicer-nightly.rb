cask 'slicer-nightly' do
  version '4.9.0.27112,787717'
  sha256 'cf178f774c2ceaa5f1607fd2e62e15b029f4e71fba01f2ba6d769adbca5d44c3'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
