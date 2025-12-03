# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.34.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.34.1/han-darwin-arm64"
      sha256 "ba498670c9db409e110b89f37957b4a598079bdc0fc6a7b936591082186b59e4"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.34.1/han-darwin-x64"
      sha256 "b7ed4cd855b438f937b8d5c18c6cb31e04f109b751c9d2b0f6a209386efbef91"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.34.1/han-linux-arm64"
      sha256 "44a838878c9e02dd9d5dfd69d4146039d73c9195a35073335d132a0bfa61ae65"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.34.1/han-linux-x64"
      sha256 "2128ec8321c74283af41e7f65864b8b6dfd7be81d045a343173a8c528d70a07b"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
