//
//  ContentViewModel.swift
//  MaterialDesignTextFieldExample
//
//  Created by Nikita Lazarev-Zubov on 22.5.2022.
//

import Combine

final class ContentViewModel: ObservableObject {

    // MARK: - Properties

    let placeholder1 = "Number"
    let placeholder2 = "Word"
    @Published
    var hint1 = "Hint 1"
    @Published
    var hint2 = "Hint 2"
    @Published
    var text1 = ""
    @Published
    var text2 = ""
    @Published
    var text1Valid = true {
        didSet {
            hint1 = text1Valid
            ? "Some number"
            : "Should contain only digits"
        }
    }
    @Published
    var text2Valid = true {
        didSet {
            hint2 = text2Valid
            ? "Some words"
            : "Should contain only letters"
        }
    }

    // MARK: - Methods

    func validateText1() {
        text1Valid = text1.contains(where: { !$0.isNumber })
    }

    func validateText2() {
        text1Valid = text1.contains(where: { $0.isNumber })
    }

}
