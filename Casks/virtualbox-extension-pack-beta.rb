cask "virtualbox-extension-pack-beta" do
  version "6.1.0_BETA2,134221"
  sha256 "47762587fd8265ade6427bfd9a40393e184ebf88cbbba38dfefedb0f660100e8"

  url "https://download.virtualbox.org/virtualbox/#{version.before_comma}/Oracle_VM_VirtualBox_Extension_Pack-#{version.before_comma}-#{version.after_comma}.vbox-extpack"
  appcast "https://download.virtualbox.org/virtualbox/LATEST-BETA.TXT"
  name "Oracle VirtualBox Extension Pack"
  homepage "https://www.virtualbox.org/"

  conflicts_with cask: "virtualbox-extension-pack"
  depends_on cask: "virtualbox-beta"
  container type: :naked

  stage_only true

  postflight do
    system_command "/usr/local/bin/VBoxManage",
                   args:  [
                     "extpack", "install",
                     "--replace", "#{staged_path}/Oracle_VM_VirtualBox_Extension_Pack-#{version.before_comma}-#{version.after_comma}.vbox-extpack"
                   ],
                   input: "y",
                   sudo:  true
  end

  uninstall_postflight do
    next unless File.exist?("/usr/local/bin/VBoxManage")

    system_command "/usr/local/bin/VBoxManage",
                   args: [
                     "extpack", "uninstall",
                     "Oracle VM VirtualBox Extension Pack"
                   ],
                   sudo: true
  end

  caveats do
    license "https://www.virtualbox.org/wiki/VirtualBox_PUEL"
  end
end
