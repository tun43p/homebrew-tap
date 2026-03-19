class Zat < Formula
  desc "What cat would be if it went to the gym, thanks to Zig."
  homepage "https://github.com/tun43p/zat"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.1/zat-aarch64-macos.tar.gz"
      sha256 "55919e380f5f541d424f604e6a49e2be5a630fc5102f4e0400bf80543a2cb75f"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.1/zat-x86_64-macos.tar.gz"
      sha256 "35e14b79c7ec15d12dcb5107aa7ed38159b3a2f13a655b4977f9b7476e329b81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.1/zat-aarch64-linux.tar.gz"
      sha256 "a9614f4f31467dff54e301fe1b667db0e118c81c1993bb98a0d231c85a2bb7bb"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.1/zat-x86_64-linux.tar.gz"
      sha256 "09f59610fd8bf8f5feef534236e5c8c277d6ef9d52bfd3d2fc48d6646b0b39ef"
    end
  end

  def install
    bin.install "zat"
  end
end
