import Foundation

extension StringProtocol {
    public func saveHTML(_ fileName: String) throws {
        let fileManager = FileManager.default
        let currentDirectoryURL = URL(fileURLWithPath: fileManager.currentDirectoryPath)
        let outputFolderURL = currentDirectoryURL.appendingPathComponent("Output")
        let htmlFileURL = outputFolderURL.appendingPathComponent("index.html")
        do {
            try fileManager.createDirectory(at: outputFolderURL, withIntermediateDirectories: true)
            try self.write(to: htmlFileURL, atomically: true, encoding: .utf8)
        } catch let error {
            print("Error :: \(error.localizedDescription)")
        }
    }
}
