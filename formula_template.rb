class Aish{{VERSION_NO_DOTS}} < Formula
  desc "AI Shell – natural language CLI for your terminal"
  homepage "https://github.com/vklimontovich/aish"
  version "{{VERSION}}"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vklimontovich/aish/releases/download/{{TAG}}/aish_{{VERSION}}_darwin_amd64.tar.gz"
    sha256 "{{SHA_DARWIN_AMD64}}"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vklimontovich/aish/releases/download/{{TAG}}/aish_{{VERSION}}_darwin_arm64.tar.gz"
    sha256 "{{SHA_DARWIN_ARM64}}"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/vklimontovich/aish/releases/download/{{TAG}}/aish_{{VERSION}}_linux_amd64.tar.gz"
    sha256 "{{SHA_LINUX_AMD64}}"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/vklimontovich/aish/releases/download/{{TAG}}/aish_{{VERSION}}_linux_arm64.tar.gz"
    sha256 "{{SHA_LINUX_ARM64}}"
  end

  def install
    bin.install "aish"
  end

  test do
    system "#{bin}/aish", "--version"
  end
end