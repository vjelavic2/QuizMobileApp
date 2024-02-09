import SwiftUI
import Firebase

struct ChangePassView: View {
    @State private var newPassword = ""
    @State private var password = ""
    @State private var isShowingPasswordChangeAlert = false
    
    var body: some View {
        VStack {
            HStack{
                
                Spacer()
                
                Image("halfCircle1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                
            }.padding(-37)
            Spacer().frame(height: 60)
            
            Text("Do you want to change your password?")
                .foregroundColor(Color.purple2)
                .font(.system(size: 40, weight: .bold))
                .padding(.leading, -5)
            
            Spacer().frame(height: 60)
            
            SecureField("Current Password", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
            
            TextField("New Password", text: $newPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: changePassword) {
                Text("Change Password")
                    .foregroundColor(Color.mygrey)
                    .font(.system(size: 17, weight: .bold))

            }
            .padding()
            .foregroundColor(.blue)
            
        }
        .alert(isPresented: $isShowingPasswordChangeAlert) {
            Alert(title: Text("Success"), message: Text("Password changed successfully"), dismissButton: .default(Text("OK")))
        }
        Spacer()

    }
    
    func changePassword() {
            guard let user = Auth.auth().currentUser else { return }
            
            let credential = EmailAuthProvider.credential(withEmail: user.email!, password: password)
            
            // Reauthenticate user
            user.reauthenticate(with: credential) { (result, error) in
                if let error = error {
                    print("Error reauthenticating user: \(error.localizedDescription)")
                    return
                }
                
                // Change password
                user.updatePassword(to: newPassword) { error in
                    if let error = error {
                        print("Error changing password: \(error.localizedDescription)")
                    } else {
                        print("Password changed successfully")
                        isShowingPasswordChangeAlert = true
                    }
                }
            }
        
    }
    
    
}


#Preview {
    ChangePassView()
}
