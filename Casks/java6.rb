cask "java6" do
  version "1.6.0_65-b14-468,2019,041-88384-20191011-3d8da658-dca4-4a5b-b67c-26e686876403"
  sha256 "3a91bd24a0524df4cde9433f2ac56182818f78aacda36c7529b3d548e0c12e63"

  on_mojave :or_older do
    pkg "JavaForOSX.pkg"

    uninstall pkgutil: "com.apple.pkg.JavaForMacOSX107"
  end
  on_catalina :or_newer do
    artifact "JavaForOSX/JavaForOSX.pkg/Payload/Library/Java/JavaVirtualMachines/1.6.0.jdk",
             target: "/Library/Java/JavaVirtualMachines/1.6.0.jdk"

    preflight do
      system_command "pkgutil", chdir: staged_path, args: ["--expand-full", "JavaForOSX.pkg", "JavaForOSX"]
    end
  end

  url "https://updates.cdn-apple.com/#{version.csv[1]}/cert/#{version.csv[2]}/JavaForOSX.dmg",
      verified: "updates.cdn-apple.com/"
  name "Apple Java 6 Standard Edition Development Kit"
  desc "Legacy runtime for the Java programming language"
  homepage "https://support.apple.com/kb/DL1572"

  caveats do
    discontinued
  end
end
