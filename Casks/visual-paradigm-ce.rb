cask 'visual-paradigm-ce' do
  version '13.2,20161101'
  sha256 '365da7caed0765fc86a0fec105648268587abb162fd97d037c6fcea803a408aa'

  url "https://eu6.visual-paradigm.com/visual-paradigm/vpce#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_CE_#{version.dots_to_underscores.gsub(',', '_')}_OSX_WithJRE.dmg"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  installer script: "Visual Paradigm CE.app/Contents/MacOS/JavaApplicationStub",
            args:   ['-q'],
            sudo:   false

  uninstall script: {
                      executable: "/Applications/Visual Paradigm CE #{version.before_comma}/uninstaller/uninstall.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-q'],
                    }
end
