cask "ghidra-beta" do
  version "9.1-BETA_DEV,20190923"
  sha256 "3d61de711b7ea18bdee3ed94c31429e4946603b3e7d082cca5e949bbd651f051"

  url "https://www.ghidra-sre.org/ghidra_#{version.before_comma}_#{version.after_comma}.zip"
  name "Ghidra"
  homepage "https://www.ghidra-sre.org/"

  conflicts_with cask: "ghidra"

  binary "ghidra_#{version.before_comma}/ghidraRun"

  zap trash: "~/.ghidra"

  caveats do
    depends_on_java "11+"
  end
end
