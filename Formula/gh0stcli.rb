class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.12.0"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.12.0/gh0stcli_0.12.0_darwin_arm64.tar.gz"
      sha256 "353819dcc7433a34e030682c3f786ba52f2c5944a1bc07be74863d9f555c7dea"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.12.0/gh0stcli_0.12.0_darwin_amd64.tar.gz"
      sha256 "b1c47daa3d6cc518ecb9f9fd6d3ddbb3b38f94352a6696d96d0139ce50348b98"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.12.0/gh0stcli_0.12.0_linux_arm64.tar.gz"
      sha256 "4cea6d036873e4290edb394c9178aebb873bb38c60768e1360102713847d28df"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.12.0/gh0stcli_0.12.0_linux_amd64.tar.gz"
      sha256 "8edd20a0d4cd28ca8b7c3b3db37f21e73c0da2c90ad982ff393a0271c59aa961"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
