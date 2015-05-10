cask :v1 => 'python33' do
  version '3.3.5'
  sha256 '7e59f823f82da5ec7e2af4449a5e33c09f5b755a8acd9cec98371da8c2b2b52b'

  url "https://www.python.org/ftp/python/#{version}/python-#{version}-macosx10.6.dmg"
  homepage 'https://www.python.org/'
  license :oss

  pkg 'Python.mpkg'

  # todo there seems to be a nonstandard installation receipt at
  # /Library/Receipts/PythonApplications-3.3.pkg/Contents/Archive.bom
  # which :pkgutil does not know how to find
  uninstall :delete => [
                        "/Library/Receipts/Python*-#{version.slice(/\d+\.\d+/)}.pkg",
                        "/Applications/Python #{version.slice(/\d+\.\d+/)}",
                        "/Library/Frameworks/Python.Framework/Versions/#{version.slice(/\d+\.\d+/)}",
                        "/Library/Python/#{version.slice(/\d+\.\d+/)}",
                       ]
  zap :delete => "~/Library/Python/#{version.slice(/\d+\.\d+/)}"
end
