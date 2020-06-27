import Danger 
let danger = Danger()

// MARK: - Swiftlint

SwiftLint.lint(.all(directory: nil), inline: true)

let editedFiles = danger.git.modifiedFiles + danger.git.createdFiles
message("These files have changed: \(editedFiles.joined(separator: ", "))")