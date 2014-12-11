cask :v1 => 'paraview-nightly' do
  version :latest
  sha256 :no_check

  if MacOS.release < :mavericks
    url 'http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=nightly&type=binary&os=osx&downloadFile=ParaView-Darwin-64bit-Lion-Python27-NIGHTLY.dmg'
  else
    url 'http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=nightly&type=binary&os=osx&downloadFile=ParaView-Darwin-64bit-NIGHTLY.dmg'
  end

  homepage 'http://www.paraview.org/'
  license :unknown

  app 'paraview.app'
end
