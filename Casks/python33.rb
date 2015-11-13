cask :v1 => 'python33' do
  version '3.3.5'
  sha256 '7e59f823f82da5ec7e2af4449a5e33c09f5b755a8acd9cec98371da8c2b2b52b'

  url "https://www.python.org/ftp/python/#{version}/python-#{version}-macosx10.6.dmg"
  name 'Python'
  homepage 'https://www.python.org/'
  license :oss

  pkg 'Python.mpkg'

  uninstall :pkgutil => [
                        "org.python.Python.PythonApplications-#{version.slice(/\d+\.\d+/)}",
                        "org.python.Python.PythonDocumentation-#{version.slice(/\d+\.\d+/)}",
                        "org.python.Python.PythonFramework-#{version.slice(/\d+\.\d+/)}",
                        "org.python.Python.PythonUnixTools-#{version.slice(/\d+\.\d+/)}",
                        ],
            :delete => [
                       "/Library/Receipts/PythonInstallPip-#{version.slice(/\d+\.\d+/)}",
                       "/Applications/Python #{version.slice(/\d+\.\d+/)}",
                       "/Library/Frameworks/Python.Framework/Versions/#{version.slice(/\d+\.\d+/)}",
                       "/Library/Python/#{version.slice(/\d+\.\d+/)}",
                       ]
  zap :delete => "~/Library/Python/#{version.slice(/\d+\.\d+/)}"
end
