class Python26 < Cask
  version '2.6.6'
  sha256 'f3683e71af5cd96dfd838c76ef7011ca0521562fb2f0d8c30a43dffe62d57c49'

  url "https://www.python.org/ftp/python/#{version}/python-#{version}-macosx10.3.dmg"
  pkg "Python.mpkg"
  homepage "http://www.python.org/"
  license :oss

  # X.Y version (no patch), which identifies various installation locations
  XY = version.slice(/\d+\.\d+/)

  uninstall :delete => [
                        "/Library/Receipts/Python*-#{XY}.pkg",
                        "/Applications/Python #{XY}",
                        "/Library/Frameworks/Python.Framework/Versions/#{XY}",
                       ]
  zap :delete => [
                  "/Library/Python/#{XY}",
                  "~/Library/Python/#{XY}",
                 ]
end
