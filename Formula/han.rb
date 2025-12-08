# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.55.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.55.1/han-darwin-arm64"
      sha256 "0105e7d5e2711f4113b8b5aba75ef513e97923170f9153a9a88b9839242a5ec8"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.55.1/han-darwin-x64"
      sha256 "71f1824236fc032a14ef59a279b702aae72fff92ecb651a4d704ec5bccbe7633"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.55.1/han-linux-arm64"
      sha256 "d13a70aca1dddbd85e9e2e3121a5e94494610281f930c8a4583ee524de430741"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.55.1/han-linux-x64"
      sha256 "8ea78c1b767b4efd489f243c3f6765409490c7c6249d5271e1fddf6a5b754515"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
