cask "jgrennison-openttd" do
  version "0.44.0"
  sha256 "f8d63c8389356c2aa66fda9d25bdcedcbb7d34b60a77914f91193dd264ca0ac3"

  url "https://github.com/JGRennison/OpenTTD-patches/releases/download/jgrpp-#{version}/openttd-jgrpp-#{version}-macos-universal.dmg"
  name "JGR's OpenTTD Patchpack"
  desc "Collection of patches applied to OpenTTD"
  homepage "https://github.com/JGRennison/OpenTTD-patches/"

  app "OpenTTD.app"

  zap trash: [
    "~/Documents/OpenTTD",
    "~/Library/Application Support/CrashReporter/openttd_*.plist",
    "~/Library/Logs/DiagnosticReports/openttd_*.crash",
    "~/Library/Saved Application State/org.openttd.openttd.savedState",
    "~/Library/Saved Application State/org.openttd.openttd.jgrpp.savedState",
  ]
end
