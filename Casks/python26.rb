cask :v1 => 'python26' do
  version '2.6.6'
  sha256 'f3683e71af5cd96dfd838c76ef7011ca0521562fb2f0d8c30a43dffe62d57c49'

  url "https://www.python.org/ftp/python/#{version}/python-#{version}-macosx10.3.dmg"
  homepage 'https://www.python.org/'
  license :oss

  pkg 'Python.mpkg'

  uninstall :delete => [
                        "/Library/Receipts/Python*-#{version.slice(/\d+\.\d+/)}.pkg",
                        "/Applications/Python #{version.slice(/\d+\.\d+/)}",
                        "/Library/Frameworks/Python.Framework/Versions/#{version.slice(/\d+\.\d+/)}",
                        "/Library/Python/#{version.slice(/\d+\.\d+/)}",
                       ]
  zap :delete => "~/Library/Python/#{version.slice(/\d+\.\d+/)}"
end
