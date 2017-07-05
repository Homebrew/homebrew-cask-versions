cask 'adobe-photoshop-cs6' do
  version '13.0'
  sha256 'f377a661660a5b00c46ef71dd5a835989d1374ed97bb891e9bdf98fa3a686a5e'

  # This Cask entirely based on @winkelsdorf's epic CS6 cask checkin:
  # https://github.com/caskroom/homebrew-versions/commit/d0255946a4d1bc1f553461f9e0143459964caf6d

  url 'http://trials2.adobe.com/AdobeProducts/PHSP/13/osx10/Photoshop_13_LS16.dmg',
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Photoshop CS6' # name must match directory in dmg for later reference
  homepage 'https://helpx.adobe.com/x-productkb/policy-pricing/cs6-product-downloads.html'

  installer script: {
                      executable: "#{staged_path}/#{name.join}/Install.app/Contents/MacOS/Install",
                      args:       ['--mode=silent', "--deploymentFile=#{staged_path}/#{name.join}/Deployment/en_US_Deployment.xml"],
                    }

  preflight do
    system_command '/usr/bin/killall',
                   args: ['-kill', 'SafariNotificationAgent']
  end

  uninstall_preflight do
    uninstall_filepath = "#{staged_path}/#{@cask.name.join}/Deployment"

    uninstall_file = File.open("#{uninstall_filepath}/en_US_Uninstall.xml", File::WRONLY | File::TRUNC | File::CREAT)
    uninstall_file.write(File.read("#{uninstall_filepath}/en_US_Deployment.xml").gsub(%r{install}, 'remove'))
    uninstall_file.close
  end

  uninstall signal: ['KILL', 'SafariNotificationAgent'],
            script: {
                      executable: "#{name.join}/Install.app/Contents/MacOS/Install",
                      args:       ['--mode=silent', "--deploymentFile=#{staged_path}/#{name.join}/Deployment/en_US_Uninstall.xml"],
                    }

  caveats 'Installation or Uninstallation may fail with Exit Code 19 (Conflicting Processes running) if Browsers, Safari Notification Service or SIMBL Services (e.g. Flashlight) are running or Adobe Creative Cloud or any other Adobe Products are already installed. See Logs in /Library/Logs/Adobe/Installers if Installation or Uninstallation fails, to identifify the conflicting processes.'
end
