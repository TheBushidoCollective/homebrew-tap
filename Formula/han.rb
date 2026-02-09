# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.1/han-darwin-arm64"
      sha256 "088b3f53ad4cc51af362154e6250da53a3eaac8b21959536dd1562dc044aff34"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.1/han-darwin-x64"
      sha256 "4b576272d75adc0f88a9d3c1d0521acd272441fcaee648a52f19cf7450c352cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.1/han-linux-arm64"
      sha256 "ba8e7ebed68209893c4a153da314348238b8047e1d80c983e5137278bfd2b99a"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.1/han-linux-x64"
      sha256 "8fcd9c3dbe3568b0fb0b8a73e472191e32fc993c854aca049415ba7634aaca9c"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
