import UIKit

struct Account{
    let additionalCharge: Double
}

enum PricingError: String, Error{
    case noItems  = "No Items"
    case noAccount = "No Account"
}

//func generatePrice(account: Account?, itemPrice: [Double]?) -> (Double?, PricingError?){
//    if let account = account {
//        if let itemPrice = itemPrice {
//            return (itemPrice.reduce(0, +) + account.additionalCharge, nil)
//        }else{
//            return (nil, PricingError.noItems)
//        }
//    }else{
//        return (nil, PricingError.noAccount)
//    }
//}

func generatePrice(account: Account?, itemPrice: [Double]?) -> (Double?, PricingError?){
    guard let account = account else {
        return (nil, PricingError.noAccount)
    }
    
    guard let itemPrice = itemPrice else {
        return (nil, PricingError.noItems)
    }
    
    return (itemPrice.reduce(0, +) + account.additionalCharge, nil)
    
}

print(generatePrice(account: Account(additionalCharge: 100), itemPrice: [100, 100, 200]))











/*
func generatePrice(account: Account?, itemPrice: [Double]?) -> (Double?, PricingError?){
    guard let account = account else {
        return (nil, PricingError.noAccount)
    }
    
    guard let itemPrice = itemPrice else {
        return (nil, PricingError.noItems)
    }

    return (itemPrice.reduce(0, +) + account.additionalCharge, nil)
    
}
*/
