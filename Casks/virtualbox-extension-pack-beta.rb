cask 'virtualbox-extension-pack-beta' do
  version '5.1.21-114648'
  sha256 '1ad585d8ca2d36bbe029c7f9b9b23db1aec1b1f7b5cbecd0329b2b786a07d5f4'

  url "https://www.virtualbox.org/download/testcase/Oracle_VM_VirtualBox_Extension_Pack-#{version}.vbox-extpack"
  name 'Oracle VirtualBox Extension Pack'
  homepage 'https://www.virtualbox.org/'

  depends_on cask: 'virtualbox-beta'
  container type: :naked

  stage_only true

  postflight do
    system_command '/usr/local/bin/VBoxManage',
                   args: [
                           'extpack', 'install',
                           '--replace', "#{staged_path}/Oracle_VM_VirtualBox_Extension_Pack-#{version}.vbox-extpack",
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
