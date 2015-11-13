cask :v1 => 'python32' 
  # note: "32" is a trailing version number on the Cask token, which
  # breaks our own token conventions, for consistency with Homebrew
  version '3.2.5'
  sha256 '581abb199d40271dbb68a8de4f1e4d5a1a7ab45cae8e817a2d9532be7a26a164'

  url "https://www.python.org/ftp/python/#{version}/python-#{version}-macosx10.6.dmg"
  name 'Python'
  homepage 'http://www.python.org/'
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
