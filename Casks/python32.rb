cask :v1 => 'python32' do
  version '3.2.5'
  sha256 '581abb199d40271dbb68a8de4f1e4d5a1a7ab45cae8e817a2d9532be7a26a164'

  url "https://www.python.org/ftp/python/#{version}/python-#{version}-macosx10.6.dmg"
  homepage 'http://www.python.org/'
  license :oss

  pkg 'Python.mpkg'

  # todo there seems to be a nonstandard installation receipt at
  # /Library/Receipts/PythonApplications-3.2.pkg/Contents/Archive.bom
  # which :pkgutil does not know how to find
  uninstall :delete => [
                        "/Library/Receipts/Python*-#{version.slice(/\d+\.\d+/)}.pkg",
                        "/Applications/Python #{version.slice(/\d+\.\d+/)}",
                        "/Library/Frameworks/Python.Framework/Versions/#{version.slice(/\d+\.\d+/)}",
                        "/Library/Python/#{version.slice(/\d+\.\d+/)}",
                       ]
  zap :delete => "~/Library/Python/#{version.slice(/\d+\.\d+/)}"
end
