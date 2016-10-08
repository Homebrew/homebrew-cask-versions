cask 'spyder-py2' do
  version '2.3.8'
  sha256 '14e521e742b086a76b17f8cca1c00f68a3e6bdaf483262e814ee6d45cafb742f'

  # bitbucket.org/spyder-ide/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/spyder-ide/spyderlib/downloads/spyder-#{version}-py2.7.dmg"
  appcast 'https://github.com/spyder-ide/spyder/releases.atom',
          checkpoint: 'cb54582f0a53c1226fa89099b928c7137f8465a66bac39c750e8b4b7714faca3'
  name 'Spyder-Py2'
  homepage 'https://github.com/spyder-ide/spyder'

  app 'Spyder-Py2.app'
end
