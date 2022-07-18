import UIKit

struct UserModel: Equatable{
    let email: String
    let password: String
    
    static func == (lhs: UserModel, rhs:UserModel) -> Bool{
        return lhs.email == rhs.email && lhs.password == rhs.password
    }
}

var users = [
    UserModel(email: "yogesh@gmail.com", password: "password"),
    UserModel(email: "pratik@gmail.com", password: "password"),
    UserModel(email: "raju@gmail.com", password: "password"),
    UserModel(email: "ankit@gmail.com", password: "password")
]

//(UserModel?, Bool) -> Tuple
func exampleUser(user: UserModel) -> (UserModel?, Bool){
    let filterUser = users.filter{ $0 == user }
    return filterUser.count > 0 ? (filterUser.first, true) : (nil, false)
}

let user = UserModel(email: "yogesh@gmail.com", password: "password")
print(exampleUser(user: user))

func getUser(_ user: UserModel) -> UserModel?{
//    return users.filter{
//        $0.email == user.email && $0.password == user.password
//    }.first
    return users.filter { mainUser in
        mainUser == user
    }.first
}

func checkUserExsits(_ user: UserModel) -> Bool{
    return users.filter{
        $0 == user
    }.count > 0 ? true : false
    //return users.count > 0 ? true : false
//    if users.count > 0{
//        return true
//    }else{
//        return false
//    }
}



//let user = UserModel(email: "yogesh@gmail.com", password: "password")
//
//if let matchUser = getUser(user){
//    print(matchUser)
//}












/*
 func checkUserExsits(_ user: UserModel) -> Bool{
 let users = users.filter{
 $0.email == user.email && $0.password == user.password
 }
 if users.count > 0{
 return true
 }else{
 return false
 }
 }
 */








/// Adopt Equatable protocol
/// Provide an implementation for the == operator. Simply add a static == func that takes lhs (left-hand side) and rhs (right-hand side) parameters and returns a Bool that decides whether the two sides are equal or not.
/// https://developer.apple.com/documentation/swift/equatable

/*
 static func == (lhs: UserModel, rhs: UserModel) -> Bool{
 return lhs.email == rhs.email && lhs.password == rhs.password
 }
 */
