class Zat < Formula
  desc "What cat would be if it went to the gym, thanks to Zig."
  homepage "https://github.com/tun43p/zat"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.6/zat-aarch64-macos.tar.gz"
      sha256 "dfe0ea1b503f1b84d7dc132482f7c3e268202dbdfb361fd8ef4b0ac63e55e394"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.6/zat-x86_64-macos.tar.gz"
      sha256 "d5b8cb3e9090359f473e056686c3e65a09831f315f544c260ea7393b0293bd1e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.6/zat-aarch64-linux.tar.gz"
      sha256 "50183dd9756c9144a189aca1484410429791f18a1e13fd36f593e9c43dd73598"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.6/zat-x86_64-linux.tar.gz"
      sha256 "37a421b6eb5b9aeb48ffd58d8e4dd6b9710229d3088cf0b6ee4a108da910fd08"
    end
  end

  def install
    bin.install "zat"
  end
end
