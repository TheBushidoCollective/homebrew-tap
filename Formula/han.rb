# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.21.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.21.3/han-darwin-arm64"
      sha256 "2cd4016ea47d4150e3e937c771a9f972023fce1aded5e1b82d0ef28b108d7107"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.21.3/han-darwin-x64"
      sha256 "8a701066f0adaee8f68bc79a18c36c7acb7108c1ff3d5d411f46e2411f7194a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.21.3/han-linux-arm64"
      sha256 "01dd4ed0c4ea0e4579ed636d131a212b52769617fa1fc0e610430fe1abd31647"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.21.3/han-linux-x64"
      sha256 "37d1e858d8bc5a338f552fad55a6d380f705480489c9bb9a946f255f189d5e78"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
