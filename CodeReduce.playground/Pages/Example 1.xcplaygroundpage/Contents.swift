
/// Write Cleaner Swift Code | Code Reduce | Code Readability

///Code readability is one of the first factors a developer learns, making it a quality one should always master. It merely means writing and presenting your code in such a manner that it can be easily read and understood.

///Clean code is a reader-focused development style that produces software that's easy to write, read and maintain. Often, you may be tempted to consider your work complete when the application operates as expected. But we're not merely writing code for computer consumption.

/// If you enjoyed this project and found it useful, please share and recommend it so others can find it 💚💚💚💚💚💚 !!!! https://youtube.com/yogeshpatelios - Please Like, Subscribe and share if it found useful for you 🤟

// MARK: - Live iOS programming 👩🏻‍💻 - Join My Course

/// Here are some of our student's review videos that explains what it's like to learn with us, and why they chose the course - I am also providing one to one session (Personal Tranning)
/// https://codewithyogesh.com/

/// If you want to join or have any questions do email me!
/// codewithyogesh@gmail.com
/// contact@codewithyogesh.com

import UIKit

struct User{
    let middleName: String?
}

func getUserMiddleName(user: User) -> String{
    return user.middleName ?? "N/A"
    //return user.middleName == nil ? "N/A" : user.middleName!
//    var middleName: String
//
//    if let unwrappedMiddleName = user.middleName{
//        middleName = unwrappedMiddleName
//    }else{
//        middleName = "N/A"
//    }
//
//    return middleName
}

let user = User(middleName: "Yogesh")
print(getUserMiddleName(user: user))

