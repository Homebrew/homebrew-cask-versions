cask 'slicer-nightly' do
  version '4.7.0.26406,693836'
  sha256 '7fc1ad0cfde34592a2a2a24e428ae639c1b27470d86debc0aad427c1dbcc4d88'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
