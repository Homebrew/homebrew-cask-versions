cask 'virtualbox-extension-pack-snapshot' do
  version :latest
  sha256 :no_check

  url do
    require 'open-uri'
    downloads_url = 'https://www.virtualbox.org/wiki/Testbuilds'
    versions = URI(downloads_url.to_s)
               .open
               .read
               .scan(%r{href=".*(Oracle_VM_VirtualBox_Extension_Pack-(?:\d+\.?)+\-\d+\.vbox\-extpack)"})
               .flatten
    "https://www.virtualbox.org/download/testcase/#{versions.last}"
  end
  name 'Oracle VirtualBox Extension Pack Development Snapshot'
  homepage 'https://www.virtualbox.org/wiki/Testbuilds'

  conflicts_with cask: [
                         'virtualbox-extension-pack',
                         'virtualbox-extension-pack-beta',
                       ]
  depends_on cask: 'virtualbox-snapshot'
  container type: :naked

  stage_only true

  real_version = url.to_s.scan(%r{(?:\d+\.?)+\-\d+}).flatten.last
  postflight do
    system_command '/usr/local/bin/VBoxManage',
                   args:  [
                            'extpack', 'install',
                            '--replace', "#{staged_path}/Oracle_VM_VirtualBox_Extension_Pack-#{real_version}.vbox-extpack"
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
