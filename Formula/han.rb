# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.20.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.20.3/han-darwin-arm64"
      sha256 "9a525e542217c3525ddde31be0a8d0f06858715106a79b12dabf54fef98271ab"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.20.3/han-darwin-x64"
      sha256 "cd6d1f31deb1bb32d6bf660ffed6095941278b3bdd215a29039897008308ea6a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.20.3/han-linux-arm64"
      sha256 "5e71ac8a8cf61d946f19a58c7d0470edf7ee5e56fdb1a0c95247b9eb2bcf33d0"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.20.3/han-linux-x64"
      sha256 "56e6c8b299ca6b8633a196b1ff8dfea02db1fa2bcdb207902079e0ce7e043292"
    end
  end

  def install
    bin.install Dir["*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
