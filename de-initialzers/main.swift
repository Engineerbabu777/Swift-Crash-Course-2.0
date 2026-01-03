

class FileHandle {
  init() { print("open") }
  deinit { print("close") }
}

var h: FileHandle? = FileHandle()
h = nil // prints "close"

