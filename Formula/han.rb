# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.47.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.47.0/han-darwin-arm64"
      sha256 "6abc827a3aa4bd4b4162a00f6ad3f942f471eef1b7820c6e6d545ceb17aeac28"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.47.0/han-darwin-x64"
      sha256 "52d8e4cb6937af65dd1ddb384f20810f9c29fe89aa9b93c575bce39254974177"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.47.0/han-linux-arm64"
      sha256 "26c6c04efcf4e10da726bd8a09ad9056bc810ca216e964f9c3ffa84a4648a6db"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.47.0/han-linux-x64"
      sha256 "073202c331190f40ddd76ecf3c9259844d6eb15d81d2e8c37dc577d60df9fc8f"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
