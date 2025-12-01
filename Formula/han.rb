# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.23.0/han-darwin-arm64"
      sha256 "3524ef2673f97dbc80b915816c46008494c72a64a7b08251a8509bdf063b369d"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.23.0/han-darwin-x64"
      sha256 "d0257a326030de448c6e6b30ab37b8f34cc77fc9cdb117e50fc9995735c60f1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.23.0/han-linux-arm64"
      sha256 "9b53b5af299f19d4c3eb522b7639a7979d31e1d89e562b54d2103a5eb900d674"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.23.0/han-linux-x64"
      sha256 "00321a32cbc0df60297b9cb13d7f55ef09e78a158938a2a0eb4dd2d32cb61df7"
    end
  end

  def install
    bin.install Dir["*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
