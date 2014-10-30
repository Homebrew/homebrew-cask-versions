class Python32 < Cask
  version '3.2.5'
  sha256 '581abb199d40271dbb68a8de4f1e4d5a1a7ab45cae8e817a2d9532be7a26a164'

  url "https://www.python.org/ftp/python/#{version}/python-#{version}-macosx10.6.dmg"
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
