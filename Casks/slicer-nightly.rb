cask 'slicer-nightly' do
  version '4.7.0.26406,693574'
  sha256 '1780445cc346cbb01408263c378d313bb1921243767e8391b4d0949e82bcab3c'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
