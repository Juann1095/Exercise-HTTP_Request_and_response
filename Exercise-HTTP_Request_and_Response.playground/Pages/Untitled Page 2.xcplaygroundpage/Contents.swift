import Foundation
let url = URL(string: " www.google.com ")
let request = URLRequest(url: url!)
URLSession.shared.dataTask(with: request) { _, _, _ in
 print("Task completed")
}
print("Task created")
