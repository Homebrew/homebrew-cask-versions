cask 'adobe-photoshop-lightroom600' do
  version '6.0'
  sha256 '5c36e5fa76b8676144c4bba9790fe4c597daf350b2195a2088346b097f46a95f'

  url "http://trials3.adobe.com/AdobeProducts/LTRM/#{version.major}/osx10/Lightroom_#{version.major}_LS11.dmg",
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Photoshop Lightroom'
  homepage 'https://www.adobe.com/products/photoshop-lightroom.html'

  # staged_path not available in Installer/Uninstall Stanza, workaround by nesting with preflight/postflight
  # see https://github.com/Homebrew/homebrew-cask/pull/8887
  # and https://github.com/Homebrew/homebrew-cask-versions/pull/296

  preflight do
    processes = system_command '/bin/launchctl', args: ['list']

    if processes.stdout.lines.any? { |line| line =~ %r{^\d+\t\d\tcom.apple.SafariNotificationAgent$} }
      system_command '/usr/bin/killall', args: ['-kill', 'SafariNotificationAgent']
    end

    system_command "#{staged_path}/Install.app/Contents/MacOS/Install",
                   args: [
                           '--mode=silent', "--deploymentFile=#{staged_path}/deploy/AdobeLightroom6.install.xml"
                         ],
                   sudo: true
  end

  uninstall_preflight do
    processes = system_command '/bin/launchctl', args: ['list']

    if processes.stdout.lines.any? { |line| line =~ %r{^\d+\t\d\tcom.apple.SafariNotificationAgent$} }
      system_command '/usr/bin/killall', args: ['-kill', 'SafariNotificationAgent']
    end

    system_command "#{staged_path}/Install.app/Contents/MacOS/Install",
                   args: [
                           '--mode=silent', "--deploymentFile=#{staged_path}/deploy/AdobeLightroom6.remove.xml"
                         ],
                   sudo: true
  end

  uninstall delete: '/Applications/Adobe Lightroom/Adobe Lightroom.app'

  zap trash: [
               '~/Library/Application Support/Adobe/Lightroom',
               "~/Library/Preferences/com.adobe.Lightroom#{version.major}.plist",
             ]

  caveats <<~EOS
    Installation or Uninstallation may fail with Exit Code 19 (Conflicting Processes running) if Browsers, Safari Notification Service or SIMBL Services (e.g. Flashlight) are running or Adobe Creative Cloud or any other Adobe Products are already installed. See Logs in /Library/Logs/Adobe/Installers if Installation or Uninstallation fails, to identifify the conflicting processes.
  EOS
end
