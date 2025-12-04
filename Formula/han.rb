# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.46.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.46.0/han-darwin-arm64"
      sha256 "229a6826cef0afb651011eb75e4bb6402e855bac5dcd47d27689493f326cf874"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.46.0/han-darwin-x64"
      sha256 "c7887229be75508c7cbea30d1cd30475eae1e150860da10fc71d5bf1bab7d1a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.46.0/han-linux-arm64"
      sha256 "3901ddb3af9f95f26c45941c6d115e017c4c28e0f042e8578bd57ed179928f0e"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.46.0/han-linux-x64"
      sha256 "bb0eb185cfe3a1668c92c91f56faec7e410ab00b4f00db5bb1d782cc684fd427"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
