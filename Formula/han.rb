# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.29.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.29.0/han-darwin-arm64"
      sha256 "3f6de00f1b253c8291d893eaacb66cdb92ada5c30330253e400576a07c11faf2"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.29.0/han-darwin-x64"
      sha256 "b19acd35c0f58768d7e1f28e2dbfa89ddb2ad7cf14e9b9c746111d6534369950"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.29.0/han-linux-arm64"
      sha256 "865390835251193181739144142c98a715ed8cf8d9c1da7b94a90801f6a9a399"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.29.0/han-linux-x64"
      sha256 "b182bafa5406f42d1bbc71e55886caa106a460e4c7b660e3e4ff576a05c94010"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
