cask :v1 => 'spyder-py2' do
  version '2.3.7'
  sha256 'f1bbc488a884decaa695dadded870b2679f32470dcdf687b7fab186328088187'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/spyder-ide/spyderlib/downloads/spyder-#{version}-py2.7.dmg"
  name 'Spyder'
  name 'Spyder-Py2'
  homepage 'https://github.com/spyder-ide/spyder'
  license :mit

  app 'Spyder-Py2.app'
end
