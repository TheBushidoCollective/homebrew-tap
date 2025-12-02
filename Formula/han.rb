# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.31.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.1/han-darwin-arm64"
      sha256 "a65050f22b212a6d891245eacf1b5f0e1cb597305edb5b61b819fdf5f90de8b2"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.1/han-darwin-x64"
      sha256 "2f31e721cac1760131d0606c585a2d5f9d7eb7fa68bb51c60c137def3f5cef88"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.1/han-linux-arm64"
      sha256 "4a2dda8d4c8bc6eeda0459ce04ec6090cee8f886a33b0cbe62dcecddc3eafe5c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.1/han-linux-x64"
      sha256 "ef4d0c30a77b9daaf613c6b1842bc000aa732d7f36e53d43f12272729550bad0"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
