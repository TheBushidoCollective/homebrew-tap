# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.9.0/han-darwin-arm64"
      sha256 "ee486ec27071b9943c1a345f1b4336bc7dd428716781865391ed344df8b2475f"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.9.0/han-darwin-x64"
      sha256 "f028fe40ab5e329caca6fb21dc0f3a0b7c4ef7e8030c70342fadb7f3c0bc3968"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.9.0/han-linux-arm64"
      sha256 "384bd8d3ecd869c0e26515b6686acafcf0440736a6f3a119ae5686d695a5df42"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.9.0/han-linux-x64"
      sha256 "5cac70141485d3789083820a128169bf2e3c16a3002d82cc2acf76a9d869367c"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
