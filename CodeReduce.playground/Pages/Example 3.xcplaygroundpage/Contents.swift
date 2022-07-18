import UIKit

struct User{
    let isAdmin: Bool
    let hasActiveMembership: Bool
}

//func determineErrorMessage(user: User) -> String{
//    if user.isAdmin && user.hasActiveMembership{
//        return "You're all set."
//    }else if user.isAdmin && !user.hasActiveMembership{
//     return "You'll need to active your membership."
//    }else if !user.isAdmin && !user.hasActiveMembership{
//        return "You'll need to update your account."
//    }else if !user.isAdmin && user.hasActiveMembership{
//        return "You don't have the right permissions."
//    }else{
//        return "Unknown user state."
//    }
//}

func determineErrorMessage(user: User) -> String{
    switch (user.isAdmin, user.hasActiveMembership){
    case (true, true):
        return "You're all set."
    case (true, false):
        return "You'll need to active your membership."
    case (false, false):
        return "You'll need to update your account."
    case (false, true):
        return "You don't have the right permissions."
    }
}

print(determineErrorMessage(user: User(isAdmin: false, hasActiveMembership: true)))









/*
func determineErrorMessage(user: User) -> String{
    switch (user.isAdmin, user.hasActiveMembership){
    case (true, true):
        return "You're all set."
    case (true, false):
        return "You'll need to active your membership."
    case (false, false):
        return "You'll need to update your account."
    case (false, true):
        return "You don't have the right permissions."
    }
}

print(determineErrorMessage(user: User(isAdmin: true, hasActiveMembership: true)))
*/
