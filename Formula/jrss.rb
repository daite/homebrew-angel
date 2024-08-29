class Jrss < Formula
    desc "A tool to handle RSS feeds"
    homepage "https://github.com/daite/jrss"
    url "https://github.com/daite/jrss/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "c11373246191e9c1b782f5551b9af59f399cde3066a4aceb49b0b4de53ea3997" # Replace with the actual SHA256 checksum
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      # Build the Go binary
      system "go", "build", "-o", bin/"jrss", "./cmd/jrss"
    end
  
    test do
      # Basic test to ensure the binary works
      assert_match "jrss version", shell_output("#{bin}/jrss --version")
    end
end  
