cask 'virtualbox-extension-pack-beta' do
  version '5.2.0_BETA2,117563'
  sha256 '30711e0aa417910cf26e1abc1da08d575d45c330fd593decf35b7d04d87f7ca7'

  url "http://download.virtualbox.org/virtualbox/#{version.before_comma}/Oracle_VM_VirtualBox_Extension_Pack-#{version.before_comma}-#{version.after_comma}.vbox-extpack"
  appcast 'http://download.virtualbox.org/virtualbox/LATEST-BETA.TXT',
          checkpoint: '4e9ae5d62ebfe2ab6e9fc1d7bd64c69f0c25b601b1c08ba92711adda7c6c0049'
  name 'Oracle VirtualBox Extension Pack'
  homepage 'https://www.virtualbox.org/'

  depends_on cask: 'virtualbox-beta'
  container type: :naked

  stage_only true

  postflight do
    system_command '/usr/local/bin/VBoxManage',
                   args: [
                           'extpack', 'install',
                           '--replace', "#{staged_path}/Oracle_VM_VirtualBox_Extension_Pack-#{version.before_comma}-#{version.after_comma}.vbox-extpack",
                           '--accept-license=715c7246dc0f779ceab39446812362b2f9bf64a55ed5d3a905f053cfab36da9e'
                         ],
                   sudo: true
  end

  uninstall_postflight do
    system_command '/usr/local/bin/VBoxManage',
                   args: [
                           'extpack', 'uninstall',
                           'Oracle VM VirtualBox Extension Pack'
                         ],
                   sudo: true
  end

  caveats <<-EOS.undent
    Installing this Cask means you have AGREED to the
    VirtualBox Personal Use and Evaluation License at

    https://www.virtualbox.org/wiki/VirtualBox_PUEL
  EOS
end
