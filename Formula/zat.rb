class Zat < Formula
  desc "What cat would be if it went to the gym, thanks to Zig."
  homepage "https://github.com/tun43p/zat"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.1/zat-aarch64-macos.tar.gz"
      sha256 "09e4a1d9fcb8a313d8e5a4eb8517e0f7925f4a5058693bee4026b1b7699b4741"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.1/zat-x86_64-macos.tar.gz"
      sha256 "83e019e736a385bfb783c68868ac5c5e8b84ee582be41190a805a1a8be26689b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.1/zat-aarch64-linux.tar.gz"
      sha256 "5eef6bc0f6e5160da3171fcfcc8f841ad86004612d8bbbb7887954e8bf82291d"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.1/zat-x86_64-linux.tar.gz"
      sha256 "5e421eb5ce941a9525fc275c8739b668868206121437f76150da4f331b2100a8"
    end
  end

  def install
    bin.install "zat"
  end
end
