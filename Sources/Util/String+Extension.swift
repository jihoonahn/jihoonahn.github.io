import Foundation

extension StringProtocol {
    public func saveHTML(_ fileName: String, _ output: String = "Output") throws {
        let fileManager = FileManager.default
        let currentDirectoryURL = URL(fileURLWithPath: fileManager.currentDirectoryPath)
        let outputFolderURL = currentDirectoryURL.appendingPathComponent(output)
        let htmlFileURL = outputFolderURL.appendingPathComponent(fileName)
        do {
            try fileManager.createDirectory(at: outputFolderURL, withIntermediateDirectories: true)
            try self.write(to: htmlFileURL, atomically: true, encoding: .utf8)
        } catch let error {
            print("Error :: \(error.localizedDescription)")
        }
    }
}
