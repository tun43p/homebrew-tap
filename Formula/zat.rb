class Zat < Formula
  desc "What cat would be if it went to the gym, thanks to Zig."
  homepage "https://github.com/tun43p/zat"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.8/zat-aarch64-macos.tar.gz"
      sha256 "89a534e997eaedc47a2cd8a323269e8ff2cd71e4a9778b80a832d1773fd194c1"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.8/zat-x86_64-macos.tar.gz"
      sha256 "897544635ba08bf46ef41bac8fc83413f3828ac2ebf8e59870097dcc91888d4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.8/zat-aarch64-linux.tar.gz"
      sha256 "1e8a35ca3ccc95b8279917756d1074f3f91073138adf3d3f2c8bf5fbc19ac777"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.8/zat-x86_64-linux.tar.gz"
      sha256 "5b9ef46a21e5c659ae8e621aa60490fece25fe92666937bd79b886ab78fdf978"
    end
  end

  def install
    bin.install "zat"
  end
end
