class Zat < Formula
  desc "What cat would be if it went to the gym, thanks to Zig."
  homepage "https://github.com/tun43p/zat"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.6/zat-aarch64-macos.tar.gz"
      sha256 "ff32673887b43b0cbb93af41f615dfb0780dd4e3dd2fc43f0488f6ed1bc22d16"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.6/zat-x86_64-macos.tar.gz"
      sha256 "4c43798723c4ee430396ecbc344264fb8489101d67afad1a05ecb8da0b72f333"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.6/zat-aarch64-linux.tar.gz"
      sha256 "9c9fbb566e52a0d01fb3da79bdaa9b3a5abe1b30fb0fea0b542a825e1318f55d"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.6/zat-x86_64-linux.tar.gz"
      sha256 "0fe355e9d6823da84716bb6a41aed2c1d6fad3cd6ff30114fae623434029d505"
    end
  end

  def install
    bin.install "zat"
  end
end
