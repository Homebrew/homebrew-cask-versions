class Python33 < Cask
  version '3.3.5'
  sha256 '7e59f823f82da5ec7e2af4449a5e33c09f5b755a8acd9cec98371da8c2b2b52b'

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
