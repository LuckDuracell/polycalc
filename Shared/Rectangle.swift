//
//  Rectangle.swift
//  PolyCalc
//
//  Created by Luke Drushell on 5/25/21.
//

import SwiftUI
import Introspect


struct Rectangle: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State var len = ""
    @State var hei = ""
    @State var wid = ""
    @State var theOutput = ""
    @State var theOutput2 = ""
    
    var body: some View {
        ZStack {
            NavigationView() {
                ZStack {
                    VStack {
                        
                        Spacer()
                        
                        TextField("Length", text: $len)
                           .keyboardType(.decimalPad)
                            .padding()
                            .font(.system(.body, design: .rounded))
                            .background(colorScheme == .light ? Color(.black).opacity(0.2) : Color(.white).opacity(0.2))
                            .cornerRadius(10)
                            .introspectTextField { (textField) in
                                       let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: textField.frame.size.width, height: 44))
                                       let flexButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
                                       let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(textField.doneButtonTapped(button:)))
                                       doneButton.tintColor = .systemBlue
                                       toolBar.items = [flexButton, doneButton]
                                       toolBar.setItems([flexButton, doneButton], animated: true)
                                       textField.inputAccessoryView = toolBar
                                    }
                        
                        TextField("Height", text: $hei)
                            .keyboardType(.decimalPad)
                            .padding()
                            .font(.system(.body, design: .rounded))
                            .background(colorScheme == .light ? Color(.black).opacity(0.2) : Color(.white).opacity(0.2))
                            .cornerRadius(10)
                            .introspectTextField { (textField) in
                                       let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: textField.frame.size.width, height: 44))
                                       let flexButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
                                       let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(textField.doneButtonTapped(button:)))
                                       doneButton.tintColor = .systemBlue
                                       toolBar.items = [flexButton, doneButton]
                                       toolBar.setItems([flexButton, doneButton], animated: true)
                                       textField.inputAccessoryView = toolBar
                                    }
                        
                        TextField("Width", text: $wid)
                           .keyboardType(.decimalPad)
                            .padding()
                            .font(.system(.body, design: .rounded))
                            .background(colorScheme == .light ? Color(.black).opacity(0.2) : Color(.white).opacity(0.2))
                            .cornerRadius(10)
                            .introspectTextField { (textField) in
                                       let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: textField.frame.size.width, height: 44))
                                       let flexButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
                                       let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(textField.doneButtonTapped(button:)))
                                       doneButton.tintColor = .systemBlue
                                       toolBar.items = [flexButton, doneButton]
                                       toolBar.setItems([flexButton, doneButton], animated: true)
                                       textField.inputAccessoryView = toolBar
                                    }
                        Spacer()
                        
                        Button() {
                            theOutput = "V: " + "\(Float(len)! * Float(wid)! * Float(hei)!)" + " units^3"
                            
                            theOutput2 = "SA: " + "\(2*((Float(wid)! * Float(len)!) + (Float(hei)!*Float(len)!) + (Float(hei)!*Float(wid)!)))" + " units^2"
                            
                        } label: {
                            Text("Calculate")
                            
                        }
                        
                        Spacer()
                        
                        Text(theOutput)
                            .font(.system(size: 25, weight: .bold, design: .rounded))
                            .padding()
                        Text(theOutput2)
                            .font(.system(size: 25, weight: .bold, design: .rounded))
                        
                        
                        Spacer()
                    }
                } .navigationTitle("Rectangular Prism")
                .padding()
            }
        }
    }
}

struct Rectangle_Previews: PreviewProvider {
    static var previews: some View {
        Rectangle()
    }
}

