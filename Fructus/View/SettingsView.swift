//
//  SettingsView.swift
//  Fructus
//
//  Created by MacBook Pro on 21/10/2026.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK:- PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            
                           Text("Most fruits art naturally los in fet, sodiunm, and calories. None have cholesterols. Furits are Source of many essential nutrients, including potassium, dietary fiber, vitamins, and much more")
                                .font(.footnote)
                        }
                        
                       
                    }
                    GroupBox {
                        Divider()
                            .padding(.vertical, 4)

                        Text("If you wish, you can restart the application by toggling the switch in this box.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.center)
                        
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
 
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)

                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemGroupedBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    } label: {
                        SettingsLabelView(
                            labelText: "Customization",
                            labelImage: "paintbrush"
                        )
                    }
                    
                 
                    // MARK SECTION 3
                    Divider().padding(.vertical, 4)
                    
                        SettingsRowView(name: "Developer", content: "John / Jane")
                        SettingsRowView(name: "Designer", content: "Robert Petres")
                        SettingsRowView(name: "Compatibility", content: "ios 14")
                        SettingsRowView(name: "Website", linkLabel: "SwtitUi Maseterclass", linkDestination: "swiftuimasterclass.com")
                       SettingsRowView(name: "Twiiter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                       SettingsRowView(name: "SwiftUI", content: "2.0")
                       SettingsRowView(name: "Version", content: "1.1.0")



 
                    

                    
                }
                
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                
                )
                .padding()
            }
        }
    }
}

#Preview {
    SettingsView()
}
