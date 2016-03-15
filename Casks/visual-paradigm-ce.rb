cask 'visual-paradigm-ce' do
  version '13.0,20160302'
  sha256 'dd72e7079c2135b7dbe8d078f0fed9385e8df44b8d6e1bd41e9763e32145c149'

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
