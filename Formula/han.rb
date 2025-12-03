# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.33.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.33.0/han-darwin-arm64"
      sha256 "18e4997d202d42a3f6620ac54bc44379830fc37b06cdacb2376b18a0b5e80f80"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.33.0/han-darwin-x64"
      sha256 "1c1f42323b9e0dae5c80552fb9886d723f581750c6fcd7643c5f76ac5c55c183"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.33.0/han-linux-arm64"
      sha256 "00707d1170d58a3bb56dc42bca5f9a6f076637f5f278d8f4f2af22a31963583c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.33.0/han-linux-x64"
      sha256 "46e0f217e05752f0d45de18f4f275b8b8ec41a8a4a715413ddf318717911ed9e"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
