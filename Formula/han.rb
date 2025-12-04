# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.45.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.45.0/han-darwin-arm64"
      sha256 "908a90b4d984279c6ac1a124a99369e130159c09769465604c00a49867a0d01c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.45.0/han-darwin-x64"
      sha256 "154f7fab5f6b492dab879801a7db498a04907686da67fa4b776577e60ba214fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.45.0/han-linux-arm64"
      sha256 "b868b4333019130b6b8cfd5b8636c90249fbe7f4e19169fa9e954e6c06566f52"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.45.0/han-linux-x64"
      sha256 "f568d87b5f744a3c6fab17d1764d46831aec79803175949c2c8c5e525dc159a8"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
