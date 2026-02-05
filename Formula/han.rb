# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.8.1/han-darwin-arm64"
      sha256 "6edc376fb5bb3b891c4f8b8544d303456a00ed99b04c179a32bdbba02756850f"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.8.1/han-darwin-x64"
      sha256 "4ca3d6b286899ad9ed53ab6089b8a3f3d7282d576c7577390a634acb02741acd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.8.1/han-linux-arm64"
      sha256 "b20c7885aff1c4aa2eea1cdd3dbd5cc0c0034c577460c74ffd6b0ccc4d52260d"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.8.1/han-linux-x64"
      sha256 "931553c25f9b307393a9e0534c238b2dc6426b91c7ee3fc8dc5185d8fcc3d5ba"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
