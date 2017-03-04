cask 'gpgtools-beta' do
  version '2017.1b2'
  sha256 'f74fd4788cfa0820933499768fa7dfe1c0b295bbae9f43812dc3590923975de4'

  url "https://releases.gpgtools.org/GPG_Suite-#{version}.dmg"
  name 'GPG Suite Beta'
  homepage 'https://gpgtools.org/'
  gpg "#{url}.sig",
      key_url: 'https://gpgtools.org/GPGTools-00D026C4.asc'

  auto_updates true
  conflicts_with cask: 'gpgtools'

  pkg 'Install.pkg'

  # TODO: remove all ENV variables
  postflight do
    system_command '/usr/local/MacGPG2/libexec/fixGpgHome',
                   args: [
                           Etc.getpwuid(Process.euid).name,
                           ENV['GNUPGHOME'] ? ENV['GNUPGHOME'] : Pathname.new(File.expand_path('~')).join('.gnupg'),
                         ],
                   sudo: true
  end

  uninstall_postflight do
    %w[gpg gpg2 gpg-agent].map { |exec_name| "/usr/local/bin/#{exec_name}" }.each do |exec|
      File.rm(exec) if File.exist?(exec) && File.readlink(exec).include?('MacGPG2')
    end
  end

  uninstall script:    {
                         executable: "#{staged_path}/Uninstall.app/Contents/Resources/GPG Suite Uninstaller.app/Contents/Resources/uninstall.sh",
                         sudo:       true,
                       },
            pkgutil:   'org.gpgtools.*',
            quit:      [
                         'com.apple.mail',
                         'org.gpgtools.gpgkeychainaccess',
                         'org.gpgtools.gpgkeychain',
                         'org.gpgtools.gpgservices',
                         # TODO: add "killall -kill gpg-agent"
                       ],
            launchctl: [
                         'org.gpgtools.Libmacgpg.xpc',
                         'org.gpgtools.gpgmail.patch-uuid-user',
                         'org.gpgtools.macgpg2.fix',
                         'org.gpgtools.macgpg2.shutdown-gpg-agent',
                         'org.gpgtools.macgpg2.updater',
                         'org.gpgtools.macgpg2.gpg-agent',
                       ],
            delete:    [
                         '/Library/Services/GPGServices.service',
                         '/Library/Mail/Bundles/GPGMail.mailbundle',
                         '/Network/Library/Mail/Bundles/GPGMail.mailbundle',
                         '/usr/local/MacGPG2',
                         '/private/etc/paths.d/MacGPG2',
                         '/private/etc/manpaths.d/MacGPG2',
                         '/private/tmp/gpg-agent',
                         '/Library/PreferencePanes/GPGPreferences.prefPane',
                         '/Applications/GPG Keychain Access.app',
                         '/Applications/GPG Keychain.app',
                         '/Library/Application Support/GPGTools',
                         '/Library/Frameworks/Libmacgpg.framework',
                       ]

  zap delete: [
                '~/Library/Services/GPGServices.service',
                '~/Library/Mail/Bundles/GPGMail.mailbundle',
                '~/Library/PreferencePanes/GPGPreferences.prefPane',
                '~/Library/LaunchAgents/org.gpgtools.*',
                '~/Library/Preferences/org.gpgtools.*',
                '~/Library/Containers/com.apple.mail/Data/Library/Preferences/org.gpgtools.*',
                '~/Library/Application Support/GPGTools',
                '~/Library/Frameworks/Libmacgpg.framework',
                '~/Containers/com.apple.mail/Data/Library/Frameworks/Libmacgpg.framework',
                '~/Library/Caches/org.gpgtools.gpg*',
              ]

  caveats do
    files_in_usr_local
  end
end
