class Aish0_6_0 < Formula
  desc "AI Shell – natural language CLI for your terminal"
  homepage "https://github.com/vklimontovich/aish"
  version "0.6.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vklimontovich/aish/releases/download/v0.6.0/aish_0.6.0_darwin_amd64.tar.gz"
    sha256 "21596b92799bc4816559660c9cc309b0d4e3a5b475f89ca7f7f5499874ae2368"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vklimontovich/aish/releases/download/v0.6.0/aish_0.6.0_darwin_arm64.tar.gz"
    sha256 "efe6abc978c3f459b863ff14c7ff1ad134e859dbdeb67675bf6c238c8514a261"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/vklimontovich/aish/releases/download/v0.6.0/aish_0.6.0_linux_amd64.tar.gz"
    sha256 "af508bc22f6d4917487a2b36149254e036297fe8e6068157b9e6151488cc3d7a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/vklimontovich/aish/releases/download/v0.6.0/aish_0.6.0_linux_arm64.tar.gz"
    sha256 "b5a6f95b7b94cdc956c919422a46f7b59495d10c21d69d32a0f91c31e7da3471"
  end

  def install
    bin.install "aish"
  end

  test do
    system "#{bin}/aish", "--version"
  end
end