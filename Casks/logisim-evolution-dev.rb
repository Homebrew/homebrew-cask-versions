cask 'logisim-evolution-dev' do
  version :latest
  sha256 :no_check

  url 'https://github.com/reds-heig/logisim-evolution/archive/develop.zip'
  name 'Logisim Evolution'
  homepage 'https://github.com/reds-heig/logisim-evolution'

  conflicts_with cask: 'logisim-evolution'
  depends_on formula: 'java'

  # depends_on java: => "1.9+" # not yet functional

  app 'logisim-evolution-develop/build/macApp/Logisim-evolution.app', target: 'Logisim Evolution.app'
  # install script
  install_script = "#{staged_path}/install.sh"
  installer script: install_script

  preflight do
    IO.write install_script, <<~EOS
      #!/bin/bash
      cd "#{staged_path}/logisim-evolution-develop"
      ./gradlew shadowJar createApp
    EOS
  end

  uninstall delete: '/Applications/Logisim Evolution.app'

  zap trash: '~/Library/Preferences/com.cburch.logisim.plist'
end
