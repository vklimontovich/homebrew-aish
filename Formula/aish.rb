class AishAT < Formula
  desc "AI Shell – natural language CLI for your terminal"
  homepage "https://github.com/vklimontovich/aish"
  version "0.5.7"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vklimontovich/aish/releases/download/v0.5.7/aish_0.5.7_darwin_amd64.tar.gz"
    sha256 "ce3b3f9487e0522617d8d3c2b4ecd2fb34ed9ec7053a430c3357a185de22f901"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vklimontovich/aish/releases/download/v0.5.7/aish_0.5.7_darwin_arm64.tar.gz"
    sha256 "2d55b480595bea2c537f0a03ba1d126ef745d1398008aaf89aaf7437f4dc91b3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/vklimontovich/aish/releases/download/v0.5.7/aish_0.5.7_linux_amd64.tar.gz"
    sha256 "433c0ee95f2400157e5ecb1cfe9d6574d84333087e3e5c3a9ce4b6610f3a28b1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/vklimontovich/aish/releases/download/v0.5.7/aish_0.5.7_linux_arm64.tar.gz"
    sha256 "af11d063260a3b1667ef492843ec068e4243479382fcd78db3f378615e80a71d"
  end

  def install
    bin.install "aish"
  end

  test do
    system "#{bin}/aish", "--version"
  end
end