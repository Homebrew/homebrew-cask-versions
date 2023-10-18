cask "anaconda2" do
  version "2019.10"
  sha256 "463cbd0b90c47d02ec341377110653870c7cc9d65572c655c5e44aaf2ccb280d"

  url "https://repo.continuum.io/archive/Anaconda2-#{version}-MacOSX-x86_64.sh",
      verified: "repo.continuum.io/archive/"
  name "Continuum Analytics Anaconda2"
  desc "Data science platform"
  homepage "https://www.anaconda.com/"

  livecheck do
    url "https://repo.anaconda.com/archive/"
    regex(/href=.*?Anaconda2[._-]v?(\d+(?:\.\d+)+)-MacOSX-x86_64\.sh/i)
  end

  container type: :naked

  installer script: {
    executable: "Anaconda2-#{version}-MacOSX-x86_64.sh",
    args:       ["-b", "-p", "#{HOMEBREW_PREFIX}/anaconda2"],
    sudo:       true,
  }

  postflight do
    set_ownership "#{HOMEBREW_PREFIX}/anaconda2"
  end

  uninstall delete: [
    "#{HOMEBREW_PREFIX}/anaconda2",
    "/Applications/Anaconda-Navigator.app",
  ]

  zap trash: [
    "~/.anaconda",
    "~/.conda",
    "~/.condarc",
  ]

  caveats do
    discontinued
    files_in_usr_local
    path_environment_variable "#{HOMEBREW_PREFIX}/anaconda2/bin"
  end
end
