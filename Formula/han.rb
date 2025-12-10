# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.57.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.57.0/han-darwin-arm64"
      sha256 "7e8a2efebb12226ea51e76bedf1b28843fd6327caf39c782e6c96a5c3190e656"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.57.0/han-darwin-x64"
      sha256 "8a1cb7fce39c8163a32690eb4366e127711ac8636b98082bd9305fd0d9783301"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.57.0/han-linux-arm64"
      sha256 "75cc88a43bd58cabe22cdc6bb92061107e3711a4694dea2780c63148aee57773"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.57.0/han-linux-x64"
      sha256 "72c157a452cbf5a93a8e47aed51a51d7cc3301c6929f817a95b203ed51659411"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
