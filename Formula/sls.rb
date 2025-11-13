class Sls < Formula
  desc "Swift-based reimplementation of the UNIX ls command"
  homepage "https://github.com/maclong9/list"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/maclong9/list/releases/download/v1.3.0/sls-aarch64"
      sha256 "4f067d2030e60683723e2976f800ce492008d85d883b80f40161cb68097452d8"
    end

    on_intel do
      url "https://github.com/maclong9/list/releases/download/v1.3.0/sls-x86_64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/maclong9/list/releases/download/v1.3.0/sls-linux-x86_64"
      sha256 "786787d3dc85d553b82718adfc837a61f043e83420f27270d45f8079a68a8caa"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "sls-aarch64" => "sls"
      else
        bin.install "sls-x86_64" => "sls"
      end
    elsif OS.linux?
      bin.install "sls-linux-x86_64" => "sls"
    end
  end

  test do
    system "#{bin}/sls", "--version"
  end
end
