# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.15.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.15.1/han-darwin-arm64"
      sha256 "9231dc8dedb6e7043be4afbf37fb0fe1ca50cd1d3626c3e423d3c941a3891370"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.15.1/han-darwin-x64"
      sha256 "8590af9fe138d7f7b5856ed37bf7d178376228e0dc7b59aa1defc8d6c5e929b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.15.1/han-linux-arm64"
      sha256 "80fdd4ab8d2fb40352bba99508508f08f8b6e830f6ebc060f8823a318b02ee30"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.15.1/han-linux-x64"
      sha256 "9b29bf3ae4cfb2d4caa6642e514f5fdfbce295b74db340eccd95cb4e9cbedc30"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
