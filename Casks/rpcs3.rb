cask "rpcs3" do
  version "v0.0.37-18159"
  sha256 "F300A6417150F09438A5976415D84D60DA46D157C54371C7FADC36ED7A4EE4CE" 

  url "https://github.com/RPCS3/rpcs3-binaries-mac/releases/download/build-23b339d410fafc21326502d381b4b03611fa294b/rpcs3-v0.0.38-18170-23b339d4_macos.7z"
      verified: "github.com/RPCS3/"
  name "RPCS3"
  desc "Open-source PlayStation 3 emulator"
  homepage "https://rpcs3.net/"

  app "RPCS3.app"

  zap trash: [
    "~/Library/Application Support/rpcs3",
    "~/Library/Saved Application State/net.rpcs3.rpcs3.savedState",
  ]
end
