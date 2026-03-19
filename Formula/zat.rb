class Zat < Formula
  desc "What cat would be if it went to the gym, thanks to Zig."
  homepage "https://github.com/tun43p/zat"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.2/zat-aarch64-macos.tar.gz"
      sha256 "1af62ca560436446792b1e1d6a9c6bfca96197c5d7692d410ba97ffe19c33d7b"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.2/zat-x86_64-macos.tar.gz"
      sha256 "e42d919e580184a69ffc4f2c98b1ee52fab8051ab606c9dcbc0307d869bd7687"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.2/zat-aarch64-linux.tar.gz"
      sha256 "973b2c99ef93e9ebc26727212039417aed9b8b1cf2f83a2909884e98e780fa08"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.2/zat-x86_64-linux.tar.gz"
      sha256 "49180b1f3d01138063b982ee8dd6796b558dd43c81f817a0d6c4748148a9ac57"
    end
  end

  def install
    bin.install "zat"
  end
end
