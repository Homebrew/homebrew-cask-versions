cask 'visual-paradigm-ce' do
  version '13.1,20160801'
  sha256 '9db9a9a39cf550e046e9d1b31b3ad8a62db5ef23ecc54c70153b982cbb8f33b7'

  url "https://eu6.visual-paradigm.com/visual-paradigm/vpce#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_CE_#{version.dots_to_underscores.gsub(',', '_')}_OSX_WithJRE.dmg"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer script: "Visual Paradigm CE #{version.before_comma} Installer.app/Contents/MacOS/JavaApplicationStub",
            args:   ['-q'],
            sudo:   false

  uninstall script: {
                      executable: "/Applications/Visual Paradigm CE #{version.before_comma}/uninstaller/uninstall.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-q'],
                    }
end
