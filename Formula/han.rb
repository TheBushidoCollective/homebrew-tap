# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.49.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.5/han-darwin-arm64"
      sha256 "01e9c84c33068ebe9aae76328049809a3c54277675ee1e2a8089bb625ad24352"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.5/han-darwin-x64"
      sha256 "f803efbdbde4b2d7dc58f72ac7ad53850a868cda835b0d2f9c55c0da969e99c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.5/han-linux-arm64"
      sha256 "3af2e2cdcb32da3664bca336ccdc2b0650372bfd35022681d5d4a5aaa38180fc"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.5/han-linux-x64"
      sha256 "f474bcbef211b7f6e296327b22782f52a5a90471d10c7c53bcb1d30cf8373e76"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
