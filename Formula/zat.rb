class Zat < Formula
  desc "What cat would be if it went to the gym, thanks to Zig."
  homepage "https://github.com/tun43p/zat"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.3/zat-aarch64-macos.tar.gz"
      sha256 "7b804a7f163cfa8e9be8da1f36b7f1ed554e57a4b54cc775a196e469ca73acd4"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.3/zat-x86_64-macos.tar.gz"
      sha256 "b7f870aa0f2dd407d5b8de59ce4331a6e43260d4eec38bd83943ab4b30e3b572"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.3/zat-aarch64-linux.tar.gz"
      sha256 "c91ef153078cf8bc47b884144b9be5e97efabc5bdeaff489cc0669c7e054c0cd"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.3/zat-x86_64-linux.tar.gz"
      sha256 "57d12679c17351005269ab516dfb2b0fed3bedc9caa013dfd16eb0b508c61a8c"
    end
  end

  def install
    bin.install "zat"
  end
end
