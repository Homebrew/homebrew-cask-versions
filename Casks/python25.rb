cask :v1 => 'python25' do
  version '2.5.4'
  sha256 '8a56b4ea88d183cad006c52c1125bb460f77e543c1e691355828e7875fb41e0c'

  url "https://www.python.org/ftp/python/#{version}/python-#{version}-macosx.dmg"
  homepage 'http://www.python.org/'
  license :oss

  pkg 'MacPython.mpkg'

  uninstall :delete => [
                        "/Library/Receipts/Python*-#{version.slice(/\d+\.\d+/)}.pkg",
                        "/Applications/Python #{version.slice(/\d+\.\d+/)}",
                        "/Library/Frameworks/Python.Framework/Versions/#{version.slice(/\d+\.\d+/)}",
                        "/Library/Python/#{version.slice(/\d+\.\d+/)}",
                       ]
  zap :delete => "~/Library/Python/#{version.slice(/\d+\.\d+/)}"
end
