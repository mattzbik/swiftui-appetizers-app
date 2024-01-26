//
//  AccountView.swift
//  Appetizers
//
//  Created by Matthew Zbik on 2024-01-19.
//

import SwiftUI

struct AccountView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthdate = Date()
    @State private var extraNapkins = false
    @State private var frequentRefills = false
    
    var body: some View {
        NavigationStack {
            Form {
                Section(content: {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    DatePicker("Birthday", selection: $birthdate, displayedComponents: .date)
                    
                    Button {
                        print("Save")
                    } label: {
                        Text("Save Changes")
                    }
                }, header: {
                    Text("Personal Info")
                })
                
                Section(content: {
                    Toggle("Extra Napkins", isOn: $extraNapkins)
                    Toggle("Frequent Refills", isOn: $frequentRefills)
                }, header: {
                    Text("Requests")
                })
                .tint(.brandPrimary)
            }
            .navigationTitle("😂 Account")
        }
    }
}

#Preview {
    AccountView()
}
