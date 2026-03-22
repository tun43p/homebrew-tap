class Zat < Formula
  desc "What cat would be if it went to the gym, thanks to Zig."
  homepage "https://github.com/tun43p/zat"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.5/zat-aarch64-macos.tar.gz"
      sha256 "75c4251ce824b07dbe449bdb028c06067d3ffbce4b08ce5b02f2141de9bc7308"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.5/zat-x86_64-macos.tar.gz"
      sha256 "e585a9e015ccfbade1bf8bef17f255ffc51f2df7df1fd76f8d40cda8f7132fd7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tun43p/zat/releases/download/v0.1.5/zat-aarch64-linux.tar.gz"
      sha256 "81d810119f2abeb9044722e26a1921308c4c3b001e602e677e156f5f2ab532c9"
    else
      url "https://github.com/tun43p/zat/releases/download/v0.1.5/zat-x86_64-linux.tar.gz"
      sha256 "04d6cd07cf20492cbee8370901bc092f8a751762f8d4875d30492fab3edef774"
    end
  end

  def install
    bin.install "zat"
  end
end
