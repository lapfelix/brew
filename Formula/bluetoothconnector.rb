class Bluetoothconnector < Formula
  desc "Simple CLI to connect/disconnect Bluetooth devices"
  homepage "https://github.com/lapfelix/BluetoothConnector"
  url "https://github.com/lapfelix/BluetoothConnector/archive/1.1.1.tar.gz"
  sha256 "0429c24b30d07ca9e4f6ec8cf1490c6b235fa2c41171295bba9caf7048bba5d1"
  head "https://github.com/lapfelix/BluetoothConnector.git"

  depends_on :xcode => ["10.0", :build]

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release", "-Xswiftc", "-static-stdlib"
    bin.install ".build/release/BluetoothConnector"
  end

  test do
    system "#{bin}/BluetoothConnector"
  end
end
