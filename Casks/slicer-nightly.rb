cask 'slicer-nightly' do
  version '4.7.0.26398,692711'
  sha256 '474c44d681e377a6285ff72b566f5472cfa60c674c832ab9226b9df7bb641966'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
