class Zat < Formula
  desc "What cat would be if it went to the gym, thanks to Zig."
  homepage "https://github.com/tun43p/zat"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.4/zat-aarch64-macos.tar.gz"
      sha256 "c846984e4cfa9777d7d20365800d350e8a7be7ceccb1fa5ee3a6398c84002747"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.4/zat-x86_64-macos.tar.gz"
      sha256 "48cb5e0bfec340731f85a576d0bc9aa775ffc844f360b3327c7126a8424ae086"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.4/zat-aarch64-linux.tar.gz"
      sha256 "d9149c5307057906da7584901a70e2a5d25ef1c18e3fc7af1694d7575f8a55eb"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.4/zat-x86_64-linux.tar.gz"
      sha256 "f4076b12288cc3f1923e4f915ba3d5c14a169517eb7219cad26342f80419e568"
    end
  end

  def install
    bin.install "zat"
  end
end
