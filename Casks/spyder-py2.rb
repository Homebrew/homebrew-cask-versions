cask 'spyder-py2' do
  version '2.3.8'
  sha256 '14e521e742b086a76b17f8cca1c00f68a3e6bdaf483262e814ee6d45cafb742f'

  # bitbucket.org/spyder-ide/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/spyder-ide/spyderlib/downloads/spyder-#{version}-py2.7.dmg"
  appcast 'https://github.com/spyder-ide/spyder/releases.atom',
          checkpoint: 'c3191194a3791cd0620ce24fc0e9ba80ee6238072fab0495c52f932b02dea378'
  name 'Spyder-Py2'
  homepage 'https://github.com/spyder-ide/spyder'

  app 'Spyder-Py2.app'
end
