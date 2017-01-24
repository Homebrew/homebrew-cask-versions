cask 'adobe-photoshop-lightroom600' do
  version '6.0'
  sha256 '5c36e5fa76b8676144c4bba9790fe4c597daf350b2195a2088346b097f46a95f'

  url "http://trials3.adobe.com/AdobeProducts/LTRM/#{version.major}/osx10/Lightroom_#{version.major}_LS11.dmg",
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Photoshop Lightroom'
  homepage 'https://www.adobe.com/products/photoshop-lightroom.html'

  # staged_path not available in Installer/Uninstall Stanza, workaround by nesting with preflight/postflight
  # see https://github.com/caskroom/homebrew-cask/pull/8887
  # and https://github.com/caskroom/homebrew-versions/pull/296

  preflight do
    system_command '/usr/bin/killall',
                   args: ['-kill', 'SafariNotificationAgent']
    system_command "#{staged_path}/Install.app/Contents/MacOS/Install",
                   args: [
                           '--mode=silent', "--deploymentFile=#{staged_path}/deploy/AdobeLightroom6.install.xml"
                         ],
                   sudo: true
  end

  uninstall_preflight do
    system_command '/usr/bin/killall',
                   args: ['-kill', 'SafariNotificationAgent']
    system_command "#{staged_path}/Install.app/Contents/MacOS/Install",
                   args: [
                           '--mode=silent', "--deploymentFile=#{staged_path}/deploy/AdobeLightroom6.remove.xml"
                         ],
                   sudo: true
  end

  uninstall delete: '/Applications/Adobe Lightroom/Adobe Lightroom.app'

  zap       delete: [
                      '~/Library/Application Support/Adobe/Lightroom',
                      "~/Library/Preferences/com.adobe.Lightroom#{version.major}.plist",
                    ]

  caveats 'Installation or Uninstallation may fail with Exit Code 19 (Conflicting Processes running) if Browsers, Safari Notification Service or SIMBL Services are running or Adobe Creative Cloud or any other Adobe Products are already installed. See Logs in /Library/Logs/Adobe/Installers if Installation or Uninstallation fails, to identify the conflicting processes.'
end
