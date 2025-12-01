# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.22.0/han-darwin-arm64"
      sha256 "ca24c4c5ac7de270da36e0b8bdbbb82d6f0000dac78c397291ea7ca632ee05e1"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.22.0/han-darwin-x64"
      sha256 "6e02562adad578ed4578411858445c9f911721ab8f33ca0ae5815d3df01b4d5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.22.0/han-linux-arm64"
      sha256 "11c33c5d839d0c756fb0919b8fc3069841782a932d114dbd4bcec37c5aefda83"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.22.0/han-linux-x64"
      sha256 "612b03496f7b403d94df8cbee4bb100eef65a3254106b53110ac03585dbf5531"
    end
  end

  def install
    bin.install Dir["*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
