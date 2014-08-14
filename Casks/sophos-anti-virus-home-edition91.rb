class SophosAntiVirusHomeEdition91 < Cask
  module Utils
    def self.install_path(cask)
      Cask.caskroom.join(cask.title).join(cask.version.to_s)
    end
    
    def self.fix_existing_installer(cask)
      command = cask::CLI.parser.default_argv.first
      # If the user is installing, then fix any cached installer
      if command.eql? "install"
        dir = Cask.caskroom.join(cask.title)
        if File.directory? dir
          ohai "Preparing existing installer found at #{dir}..."
          cmd = ['/usr/bin/sudo', '-E', '--', 'chmod', '-R', 'u+w', dir].join(' ')
          `#{cmd} > /dev/null 2>/dev/null`
        end
      end
    end
  end

  version '9.1.5'
  sha256 'c8d0739f480f781582ac5eeeb72820acee61072c1e81807dd60ff74fe8c76334'

  url 'http://downloads.sophos.com/home-edition/savosx91_he.zip'
  homepage 'http://www.sophos.com/en-us/products/free-tools/sophos-antivirus-for-mac-home-edition.aspx/'
  
  Utils.fix_existing_installer(self)
  
  before_install do |cask|
    # The real installation
    # http://www.sophos.com/en-us/support/knowledgebase/14179.aspx
    ohai "Running the Sophos installer..."
    finished = system('/usr/bin/sudo', '-E', '--',
    "#{Utils.install_path(cask)}/Sophos Anti-Virus Home Edition.app/Contents/MacOS/tools/InstallationDeployer", '--install')

    if !finished
      onoes "The installer failed to complete. You can try running it yourself from #{Utils.install_path(cask)}/Sophos Anti-Virus Home Edition.app"
      # Can we link the installer here?
      # link 'Sophos Anti-Virus Home Edition.app'
    else
      ohai "The installer finished successfully!"
    end
  end

  caveats do
    # Reboot is necessary if upgrading, TODO: check if this was an upgrade
    reboot
    puts "This installation requires administrative rights. You may be asked for your password during the install process."
    puts
  end
end