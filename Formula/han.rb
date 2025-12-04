# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.43.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.43.0/han-darwin-arm64"
      sha256 "8be6800c0bdc43585d4ad451500903c6ec4128a46d4bcdcb64d19c347a44b9b6"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.43.0/han-darwin-x64"
      sha256 "c97f3803e579211410c3d67579ed3daed87e83859e8918cc54bb51ba01093cca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.43.0/han-linux-arm64"
      sha256 "3fc953a2dbb70043e29b3bc6682176e3d221a72a08dff0080f8c9659b02a6751"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.43.0/han-linux-x64"
      sha256 "12a90cc88751a109fe13328b94a148e56a7dfb4130e480994978fbdee40bda87"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
