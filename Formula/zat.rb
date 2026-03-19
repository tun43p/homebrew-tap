class Zat < Formula
  desc "What cat would be if it went to the gym, thanks to Zig."
  homepage "https://github.com/tun43p/zat"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.0/zat-aarch64-macos.tar.gz"
      sha256 "960f44f3f7cdb30f4cd213739ed2f2593b6786b1910c4e8b30af08dd6900434a"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.0/zat-x86_64-macos.tar.gz"
      sha256 "5525a9384868f7317f8ab3c1207d6da58b6db1018e5a59a2b288788b4323705f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.0/zat-aarch64-linux.tar.gz"
      sha256 "f7a10fffecdf5910913aed231b6ff9e06c3064679f0bca0bb93df18c0c064b7a"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.0/zat-x86_64-linux.tar.gz"
      sha256 "c4b44764d7084c8b7aac95e40dbefc67a7deae3d9507f9fb3e88fc20f41e40a7"
    end
  end

  def install
    bin.install "zat"
  end
end
