cask "java6" do
  version "1.6.0_65-b14-468,2019:041-88384-20191011-3d8da658-dca4-4a5b-b67c-26e686876403"
  sha256 "3a91bd24a0524df4cde9433f2ac56182818f78aacda36c7529b3d548e0c12e63"

  url "https://updates.cdn-apple.com/#{version.after_comma.before_colon}/cert/#{version.after_colon}/JavaForOSX.dmg",
      verified: "updates.cdn-apple.com/"
  name "Apple Java 6 Standard Edition Development Kit"
  desc "Legacy runtime for the Java programming language"
  homepage "https://support.apple.com/kb/DL1572"

  if MacOS.version <= :mojave
    pkg "JavaForOSX.pkg"

    uninstall pkgutil: "com.apple.pkg.JavaForMacOSX107"
  else
    artifact "JavaForOSX/JavaForOSX.pkg/Payload/Library/Java/JavaVirtualMachines/1.6.0.jdk",
             target: "/Library/Java/JavaVirtualMachines/1.6.0.jdk"

    preflight do
      system_command "pkgutil", chdir: staged_path, args: ["--expand-full", "JavaForOSX.pkg", "JavaForOSX"]
    end
  end
end
