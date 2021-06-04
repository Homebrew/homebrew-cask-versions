# This is provided because 2.2.16 has a bug where it cannot be used with
# RSA SHA1 ssh keys which makes it impossible to use with vagrant-aws as
# well as any other platform that only supports RSA SHA1 keys. There's
# been no activity from the vagrant maintainers to fix this so until
# something's done about it it should be easy to install 2.2.15.
#
# https://github.com/hashicorp/vagrant/issues/12344
cask "vagrant2-2-15" do
  version "2.2.15"
  sha256 "5c2b290c4fa2371e255c56b1e96ded3d0c838d54cb7f0e8e6cf154e9f206a20e"

  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_x86_64.dmg",
      verified: "hashicorp.com/vagrant/"
  name "Vagrant"
  desc "Development environment"
  homepage "https://www.vagrantup.com/"

  livecheck do
    url "https://github.com/hashicorp/vagrant"
    strategy :git
  end

  pkg "vagrant.pkg"

  uninstall script:  {
    executable: "uninstall.tool",
    input:      ["Yes"],
    sudo:       true,
  },
            pkgutil: "com.vagrant.vagrant"

  zap trash: "~/.vagrant.d"
end
