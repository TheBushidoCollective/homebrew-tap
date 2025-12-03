# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.36.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.4/han-darwin-arm64"
      sha256 "5204755ba7c737794209bd5346fd01ca3d3a724ed1362b66313a2f458dbd959c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.4/han-darwin-x64"
      sha256 "e018bdd3ba29fb6544e8fc5e0c50521bfc572619e73122efecbf3ec07f8cb987"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.4/han-linux-arm64"
      sha256 "392adba0199ef62444f4d51d59acd960dc47921af3648cb5c3c4f40617de136b"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.4/han-linux-x64"
      sha256 "83d75e2e793bfeac60b780cb2550a0d03c9a0ac688432e51244b210d600ff15f"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
