# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.1.5/han-darwin-arm64"
      sha256 "5bc9a836be1ed64e4bb23a745e3be92f8296724f23e10ae50a3c9a3b645554f7"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.1.5/han-darwin-x64"
      sha256 "58d01c0b96162ca88b299958c5991b6b5c21056d2ad31d0d1e8fd099cad441b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.1.5/han-linux-arm64"
      sha256 "020843d25ac2655049e19b613332f739aa3439d64250f154b6cd79606cfc3444"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.1.5/han-linux-x64"
      sha256 "c7429459d61d4db423c6daa17744918b9e835c3a7279b57ac3220304aba461db"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
