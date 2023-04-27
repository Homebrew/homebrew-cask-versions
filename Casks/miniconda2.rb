cask "miniconda2" do
  version :latest
  sha256 :no_check

  url "https://repo.continuum.io/miniconda/Miniconda2-latest-MacOSX-x86_64.sh",
      verified: "repo.continuum.io/miniconda/"
  name "Continuum Analytics Miniconda"
  desc "Minimal installer for conda"
  homepage "https://www.anaconda.com/"

  container type: :naked

  installer script: {
    executable: "Miniconda2-latest-MacOSX-x86_64.sh",
    args:       ["-b", "-p", "#{HOMEBREW_PREFIX}/miniconda2"],
    sudo:       true,
  }

  postflight do
    set_ownership "#{HOMEBREW_PREFIX}/miniconda2"
  end

  uninstall delete: "#{HOMEBREW_PREFIX}/miniconda2"

  zap trash: [
    "~/.conda",
    "~/.condarc",
    "~/.continuum",
  ]

  caveats do
    discontinued
    files_in_usr_local
    path_environment_variable "#{HOMEBREW_PREFIX}/miniconda2/bin"
  end
end
