//: ## JSON Downloading & Parsing
import Foundation
import XCPlayground

// This is just a hack to get Xcode Playground working on async methods sync as NSURLSessions
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

let requestURL: NSURL = NSURL(string: "https://webuild.sg/api/v1/events")!
let urlRequest = NSMutableURLRequest(URL: requestURL)
let session = NSURLSession.sharedSession()
let task = session.dataTaskWithRequest(urlRequest) { (data, response, error) -> Void in

    let httpResponse = response as! NSHTTPURLResponse
    let statusCode = httpResponse.statusCode
 
    print(statusCode)
    if statusCode == 200{
        do{
            let json = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments)
            let events = json["events"] as! [[String: AnyObject]]    //if you are confident that it is an array then !
            for event in events{
                let name = event["name"] as! String
                let desc = event["description"] as! String
                let URL = event["url"]
                print(name)
            }
        } catch {
            
        }
    }
}

task.resume()

//: [Previous](@previous) | [Next](@next)
