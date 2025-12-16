# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.1.0/han-darwin-arm64"
      sha256 "79f02f8c4236da5e9a46270709a2854e3006334af1fc7544a1e4ab60362dbb59"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.1.0/han-darwin-x64"
      sha256 "796b60c78f4e89d3740a0f8faaf2df6341443f22a4d708c45f108610e5a090a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.1.0/han-linux-arm64"
      sha256 "5f99f375bd94253d2d5a9c9c94837c08c7dceb53c32449f98501bd7bd9f60201"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.1.0/han-linux-x64"
      sha256 "c0386c06b0218230a57dd0c139a4e091bfeb9e5d508200100c3f9fa703ca478b"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
