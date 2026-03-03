# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.17.0/han-darwin-arm64"
      sha256 "b8a8e38d5101b98f5c4e99700b0f2736656cba50dd12adf841ab5e1542d743ed"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.17.0/han-darwin-x64"
      sha256 "ce68387fe24a159f4bd8e6927b79e2bb8c53f6ae755e06bc810cfd4f37aa9e4b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.17.0/han-linux-arm64"
      sha256 "b94b7135348ec15e762df90f38f17b28c6320d2bd94b3244da1d8ceb9861299c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.17.0/han-linux-x64"
      sha256 "9ab631f333e94154570359ef3994e246eb63d6e0eec7d5b4662e5b474c2db474"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
