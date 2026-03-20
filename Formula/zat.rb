class Zat < Formula
  desc "What cat would be if it went to the gym, thanks to Zig."
  homepage "https://github.com/tun43p/zat"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.2/zat-aarch64-macos.tar.gz"
      sha256 "39dd219496c93efea8f4fc2cd8a844a9bb6b4300a1be59955d9ae1bc3621b5fd"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.2/zat-x86_64-macos.tar.gz"
      sha256 "b2d295c777bdf7086d143280e7d38b27419a7d398a800b38c039dba84326313e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.2/zat-aarch64-linux.tar.gz"
      sha256 "9fc4286eb59a06d6e1e0b600f2427740ae10147a143fe691d9ebdfdfb787858e"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.2/zat-x86_64-linux.tar.gz"
      sha256 "0ce6a416950d4a41afd7f305724627399d27e64744334c78474c85f88cfde44f"
    end
  end

  def install
    bin.install "zat"
  end
end
