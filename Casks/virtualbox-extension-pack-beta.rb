cask 'virtualbox-extension-pack-beta' do
  version '6.0.0_BETA1,125994'
  sha256 '401783b228db7ffbe4812618ce1b02c11d89c0f6cfbde886f7bfd9ce2faf9224'

  url "https://download.virtualbox.org/virtualbox/#{version.before_comma}/Oracle_VM_VirtualBox_Extension_Pack-#{version.before_comma}-#{version.after_comma}.vbox-extpack"
  appcast 'https://download.virtualbox.org/virtualbox/LATEST-BETA.TXT'
  name 'Oracle VirtualBox Extension Pack'
  homepage 'https://www.virtualbox.org/'

  conflicts_with cask: 'virtualbox-extension-pack'
  depends_on cask: 'virtualbox-beta'
  container type: :naked

  stage_only true

  postflight do
    system_command '/usr/local/bin/VBoxManage',
                   args:  [
                            'extpack', 'install',
                            '--replace', "#{staged_path}/Oracle_VM_VirtualBox_Extension_Pack-#{version.before_comma}-#{version.after_comma}.vbox-extpack"
                          ],
                   input: 'y',
                   sudo:  true
  end

  uninstall_postflight do
    next unless File.exist?('/usr/local/bin/VBoxManage')

    system_command '/usr/local/bin/VBoxManage',
                   args: [
                           'extpack', 'uninstall',
                           'Oracle VM VirtualBox Extension Pack'
                         ],
                   sudo: true
  end

  caveats do
    license 'https://www.virtualbox.org/wiki/VirtualBox_PUEL'
  end
end
