class Zat < Formula
  desc "What cat would be if it went to the gym, thanks to Zig."
  homepage "https://github.com/tun43p/zat"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.3/zat-aarch64-macos.tar.gz"
      sha256 "43169cdea04450f1dcbd751b6f7449d7c5d0124fc263bbf54c9285c446afbc6e"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.3/zat-x86_64-macos.tar.gz"
      sha256 "b28eeeef1a09a6c738040238b1aab4d716b303c7842046d98eb2d0b7e054ca7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.3/zat-aarch64-linux.tar.gz"
      sha256 "6db23a48f1ea6e566aa2907713ca83a04283e24d5ea38b159ce991d8dfec871d"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.3/zat-x86_64-linux.tar.gz"
      sha256 "f58eecc932f5c352caa8cd13c1b6642b4934fc9b2d06e2e4b6318a0c729e7ffd"
    end
  end

  def install
    bin.install "zat"
  end
end
