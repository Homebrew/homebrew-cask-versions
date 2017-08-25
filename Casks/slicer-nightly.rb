cask 'slicer-nightly' do
  version '4.7.0.26304,680740'
  sha256 'd2643735d7296252caf2d84bcc1fc58d37ee194c8ca3e0bf783e6583ee776e11'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
