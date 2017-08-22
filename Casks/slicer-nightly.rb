cask 'slicer-nightly' do
  version '4.7.0.26296,679359'
  sha256 '20c254f36ccd753c969523c75aa5962525411e9777857589d7944b718241e32a'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
