# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.21.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.21.3/han-darwin-arm64"
      sha256 "16f016a09a10e240e5e4f8750aa02dec2362a93b1fe71596ca4a4f804fb80a4f"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.21.3/han-darwin-x64"
      sha256 "d934a8a267c9e163af6f96a7754f3ea84f52b7956d33e4b94de44e1021d46645"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.21.3/han-linux-arm64"
      sha256 "9d25d91a01e84676e04ab4e964fa76ec2b3643e457b7cb921aefb9b9c8842c1c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.21.3/han-linux-x64"
      sha256 "1b9525e6e3d4d379e736879e5627df955eef8a1bb07bb11abc971eb980f869b5"
    end
  end

  def install
    bin.install Dir["*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
