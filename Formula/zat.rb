class Zat < Formula
  desc "What cat would be if it went to the gym, thanks to Zig."
  homepage "https://github.com/tun43p/zat"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.7/zat-aarch64-macos.tar.gz"
      sha256 "73255b45aca86b8233a5333603b6c9a0faf55e79bb843700ce171b2c2e85db89"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.7/zat-x86_64-macos.tar.gz"
      sha256 "e82cc5fa2d977e2decf796fe49ff46c33a1675331596c6efd6e09939b4415969"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.7/zat-aarch64-linux.tar.gz"
      sha256 "94d81d10e1368181ff08d5d746700c66328d9f52468eb307e4e4f4b208445f97"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.7/zat-x86_64-linux.tar.gz"
      sha256 "80c96e2545de3073ad9bf410454d52654cb624f9777f31085568f147881bebb3"
    end
  end

  def install
    bin.install "zat"
  end
end
