class Zat < Formula
  desc "What cat would be if it went to the gym, thanks to Zig."
  homepage "https://github.com/tun43p/zat"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.4/zat-aarch64-macos.tar.gz"
      sha256 "d64d1d88bf4713f0ab498ace30230ab889b37008ae814db48a2d997ae9664b56"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.4/zat-x86_64-macos.tar.gz"
      sha256 "e65c78af57431caedad555a7fc4e0263999a8b7a59b43b041f172f5318ff2b09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.4/zat-aarch64-linux.tar.gz"
      sha256 "0e409dbcc49331298a3c3160be40ba636773291b71c0b2575fb566d0e7d27614"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.4/zat-x86_64-linux.tar.gz"
      sha256 "394d797d7c4ada38b00f0caffa16fea26eefda00cca5e6d1972b6cff85141a98"
    end
  end

  def install
    bin.install "zat"
  end
end
